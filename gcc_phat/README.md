# 四麦 GCC-PHAT 的 PL 实现

入口是 `rtl/gcc_phat_4mic.v`，目标器件为 `xc7z020clg400-1`，使用本机 Vivado 2018.3 的 FFT v9.1。Verilog 是可综合 RTL，测试平台使用 SystemVerilog；FFT 采用真实 Xilinx IP，不使用行为级 FFT 冒充硬件。

## 数据通路

```text
四个同时刻的 24 位有符号样本
    -> 两帧 RAM 缓冲
    -> 每路去均值、Hann 窗、半幅保留余量
    -> 2048 点音频补零到 4096 点
    -> 共享 FFT IP，依次处理四路
    -> 六对互功率谱、PHAT 归一化
    -> 同一 FFT IP 切到 IFFT，依次处理六对
    -> 仅在物理允许范围内寻正相关峰
    -> 正方形阵列的等权最小二乘组合
    -> RTL CORDIC 计算方向角
```

这是完整算法核，不包含 I2S 接收、跨时钟 FIFO、PS/AXI 寄存器、屏幕驱动。现有工程仍为双麦采集，不能直接把未连接的第三、第四路视为有效麦克风。实际接入前必须提供同步的四路数据。

## 当前参数

| 项目 | 默认值 |
|---|---|
| 每路帧长 | 2048 点，无重叠 |
| FFT/IFFT 长度 | 4096 点 |
| 麦克风数据 | 24 位二进制补码 |
| 算法时钟 | 设计目标 100 MHz，可另行验证 50 MHz |
| 采样率参数 | 44100 Hz，与现有 MATLAB 脚本一致，必须按实际 WS 修改 |
| 阵列 | 进声孔中心组成 70 mm 正方形 |
| 相关频段 | 300～6000 Hz，对应频点由采样率参数计算 |
| 时差精度 | 整数采样点，尚未加入亚采样插值 |
| FFT 缩放 | 24 位块浮点，指数不参与 PHAT；每路正比例缩放会被归一化抵消 |
| IFFT 缩放 | 块浮点；同一对中的统一幅度缩放不改变峰位置 |

注意：`SAMPLE_RATE` 参数只决定频段和最大时延搜索范围，不会产生或修改麦克风时钟。48 kHz 接入时设置 `SAMPLE_RATE=48000`。阵列几何变化后需要修改距离约束和方向求解；当前角度公式只适用于等边正方形。

PHAT 使用真实欧氏幅度：先算 `C=A*conj(B)`，对 `Re(C)^2+Im(C)^2` 做串行整数平方根，再通过串行除法得到 Q1.22 复数。平方根向上取整以避免归一化超过 1。零幅度输出零，`MIN_CROSS_MAG` 可屏蔽弱频点。只算正频率，再写入共轭负频率，保证 IFFT 输入的共轭对称性。直流和 Nyquist 频点为零。

## 编号和正负号

从进声面看，PCB 的 +Y 箭头朝前，+X 朝右：

```text
                +Y / front / 0 deg
                         ^
     MIC1 (-35,+35)             MIC2 (+35,+35)

     MIC3 (-35,-35)             MIC4 (+35,-35)
                         -> +X / right / +90 deg
```

输出顺序固定为 `12,13,14,23,24,34`，定义 `lag_ij=(t_i-t_j)*Fs`。正数表示第 i 路到得更晚。与旧 `tdoa_xcorr.m` 的 `L[n]*R[n+k]` 正号约定相反，不能直接混用旧脚本的正负解释。

方向组合为：

```text
H = lag12 + lag14 - lag23 + lag34
V = -lag13 - lag14 - lag23 - lag24
angle = atan2(H,V)
```

前方为 0°、右方为 +90°、左方为 -90°、后方为 ±180°。阵列在远场单声源假设下估计方向，不能把这个方位角当作声源距离或完整 xyz 坐标。平面阵列的上下镜像也未解决。

## 接口怎样连接

所有接口都属于 `clk` 时钟域。`rst` 是同步高电平复位，至少保持 2 个算法时钟周期；外部按键和 MMCM LOCKED 应通过适当复位同步电路处理。

`sample_valid && sample_ready` 的那个上升沿，同时接收 `mic1..mic4`，四个值必须属于同一个采样时刻。推荐先把四路拼为 96 位，经异步 FIFO 从 I2S 时钟域送来。不能只对四个 24 位数据各打两拍跨时钟，也不能不管 `sample_ready` 直接发送无法重试的脉冲。

FIFO 为 FWFT 时，可在同一算法时钟域连接：

```verilog
assign sample_valid = !fifo_empty;
assign fifo_rd_en = sample_valid && sample_ready;
assign {mic4, mic3, mic2, mic1} = fifo_dout; // 96 bits
```

标准读模式 FIFO 需要额外的输出有效/暂存逻辑，不能套用上述 FWFT 接法。这里的 `sample_valid` 是流协议有效信号，遇到反压允许保持高电平。

`result_valid` 为单周期完成脉冲。六个 `lagXX`、`pair_valid`、`angle_deg_q16`、`direction_valid` 和 `processing_cycles` 在该周期同时更新，并保持到下一帧结果。`result_seq` 从 1 开始递增。

角度为有符号 32 位 **Q16.16 度数**，即 `真实角度=angle_deg_q16/65536`。例如 +90° 对应十六进制 `005A0000`，-90° 对应 `FFA60000`。

`pair_valid` 只表示允许时延范围内找到了正相关峰，`direction_valid` 还要求六对均有峰、方向向量非零且 FFT 协议无错误。这不是混响/多声源环境下的可信度保证；目前没有峰比、残差门限或多帧跟踪。真实录音需要另行验证并调整频段/质量门限。

算法输入已经去掉了每帧均值，恒定 DC、全零和正上方导致的全零时差会给出无方向结果，PS/界面应遵循有效标志。

## 在 Vivado 中复现

在 PowerShell 中运行：

```powershell
.\gcc_phat\run.ps1
```

脚本会在系统临时目录创建短英文路径的独立项目，避免原工程路径/中文目录问题。它不会写回 D 盘现有采集工程。`build_path.txt` 记录生成目录，可在 Vivado 2018.3 打开该目录中的 `project/gcc_probe.xpr`。

需要 NumPy；脚本优先使用当前 Codex 环境自带 Python，否则使用 PATH 中的 Python。可以通过 `-Python` 和 `-Vivado` 指定位置。

同时进行算法核的 OOC 综合和布局布线：

```powershell
.\gcc_phat\run.ps1 -Synthesize
```

布局布线仅检查算法核内部 100 MHz 时序，不代表与开发板的 IO、I2S CDC 或完整 PS 工程已经通过时序。不会生成/下载板级 bitstream。

`scripts/create_project.tcl` 固定生成匹配的 `gcc_fft_ip`。不要直接换成当前 BD 内的 `core_xfft_0_0`：查到它是 1024 点、16 位、倒序输出，与本核不兼容。

若接入现有工程，可以从 HDL 顶层例化本核，并准备其 FFT IP 和窗系数文件；如果通过 BD 使用，应把含 FFT 子核的整个模块打包成自定义 IP，再接入四路流接口。不要手改 Vivado 自动维护的 wrapper。

## 验证范围和报告

`scripts/reference.py` 为独立 Python/NumPy 数值参考。PHAT 算术单元与整数参考逐位比较；FFT 使用真实 Xilinx 仿真模型，整链路比较六个时延与角度，不声称 FFT 浮点参考与块浮点结果逐位相同。

- 512 组 PHAT 测试，含所有象限、零、单位轴向和 24 位极值。
- 256 组方向求解测试，含四象限、零向量和输入极值。
- 10 帧完整四麦数据：八个方向、DC-only 静音、低幅度信号；包含各路增益/DC 不同、输入间隙、双缓冲反压和部分帧复位。

完成后查看 `reports/verification_summary.json`、`reports/rtl_results.csv`、单元/整链路日志以及综合和布局布线报告。处理时间按 `processing_cycles / 实际算法时钟频率` 换算，不包含采样窗口和队列等待。没有做 50% 重叠帧；双缓冲仅用于采集与计算并行。
