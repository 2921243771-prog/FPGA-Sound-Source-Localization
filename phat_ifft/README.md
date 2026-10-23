# 四麦 PHAT + IFFT：接入现有工程

## 1. 加入哪些文件

把下面 **4 个 `.v` 文件**加入 Vivado 的 Design Sources，更新 Module Reference：

| 文件 | 作用 |
|---|---|
| `PHAT_IFFT_Ctrl.v` | 读四路频谱 RAM，计算六组 PHAT，发送 IFFT 输入，接收结果并寻峰 |
| `PHAT_Weight.v` | 单个频点的复数互功率谱与 PHAT 加权，提供 ready/valid 接口 |
| `PHAT_Norm_Core.v` | 加权内部使用的乘法、平方根和除法运算 |
| `FFT_IFFT_Mux.v` | 让原来的 FFT 控制器和新控制器共用现有 FFT IP |

`PHAT_IFFT_Ctrl` 已经例化另外两个 PHAT 模块，BD 只需添加 **PHAT_IFFT_Ctrl 和 FFT_IFFT_Mux**。
`.sv`、`.mem`、Python 和测试脚本用于仿真，不加入硬件设计源文件。

IFFT 运算由现有 Xilinx FFT IP 完成，不需要第二个 FFT IP，也不用新增存放 PHAT 或完整相关结果的 RAM。

```text
原 fft_ctrl ──配置/数据──┐
                       ├── FFT_IFFT_Mux ── 现有 xfft_0
新 PHAT_IFFT_Ctrl ──────┘          │
       ▲                          ├─ FFT结果 → 原 FFT_Receive_Store → 频谱RAM A口
       │                          └─ IFFT结果 → 新 PHAT_IFFT_Ctrl → 六组时延
       └────────────── 频谱RAM B口
```

## 2. IP 配置前提

针对当前配置编写：单通道、固定 **4096 点**、24 位定点实部/虚部、**Block Floating Point**、Natural Order、Non Real Time、带 `aresetn`，实际 `aclk=50MHz`。

- 配置字 `8'h01`：FFT，由原 `fft_ctrl` 发送。
- 配置字 `8'h00`：IFFT，由新控制器发送。
- 原 `fft_ctrl` 的 `IFFT_MODE` 保持 **0**。
- 如果把 FFT IP 改为 Scaled、多通道或可变点数，配置字段会变化，不能继续照用这里的 8 位配置字。
- 复数总线统一：`[47:24]` 为有符号虚部，`[23:0]` 为有符号实部。

## 3. 新控制器的基本连接

| PHAT_IFFT_Ctrl 端口 | 连接到 |
|---|---|
| `clk` | 当前算法的 50MHz 时钟，与 FFT `aclk`、频谱 RAM `clkb` 相同 |
| `rst` | 当前 VIO 控制的低有效复位，与原控制器及 FFT `aresetn` 共用 |
| `start` | 原 `FFT_Receive_Store.all_channels_ready` |
| `busy` | `FFT_IFFT_Mux.select_ifft` |
| `spectrum_addrb[13:0]` | **存 FFT 结果的 RAM** 的 `addrb` |
| `spectrum_enb` | 该 RAM 的 `enb` |
| `spectrum_doutb[47:0]` | 该 RAM 的 `doutb` |

这里连接的是 **48×16384 的频谱 RAM**，不是采样数据所在的 96 位写入 RAM。
频谱 RAM B 口读宽度 48、地址宽度 14；当前读延迟为 2 周期，所以 `RAM_READ_LATENCY=2`。若有独立 `regceb`，接常量 1。
频谱 RAM A 口仍由原 FFT 接收存储模块写入。

地址布局：

| 麦克风 | 4096 个复数频点地址，十六进制 |
|---|---|
| 1 | `0000–0FFF` |
| 2 | `1000–1FFF` |
| 3 | `2000–2FFF` |
| 4 | `3000–3FFF` |

`start` 在模块空闲时检测上升沿。一直保持 1 不会重复计算；忙时的新上升沿不排队。
复位至少保持 2 个运行时钟周期，再释放；同步运算内核也需要在复位期间获得时钟。

## 4. FFT_IFFT_Mux 怎么接

把原来直接连接 FFT IP 的数据/配置线路改接到 MUX。四组接口含义如下。

### A. forward：接原来的模块

| MUX 端口 | 连接到 |
|---|---|
| `forward_config_tdata` | 原 `fft_ctrl.s_axis_config_tdata` |
| `forward_config_tvalid` | 原 `fft_ctrl.s_axis_config_tvalid` |
| `forward_config_tready` | 原 `fft_ctrl.s_axis_config_tready` |
| `forward_data_tdata` | 原 `fft_ctrl.tdata` |
| `forward_data_tvalid` | 原 `fft_ctrl.s_axis_data_tvalid` |
| `forward_data_tlast` | 原 `fft_ctrl.s_axis_data_tlast` |
| `forward_data_tready` | 原 `fft_ctrl.s_axis_data_tready` |
| `forward_result_tdata` | 原 `FFT_Receive_Store.m_axis_data_tdata` |
| `forward_result_tvalid` | 原 `FFT_Receive_Store.m_axis_data_tvalid` |
| `forward_result_tlast` | 原 `FFT_Receive_Store.m_axis_data_tlast` |
| `forward_result_tready` | 原 `FFT_Receive_Store.m_axis_data_tready` |

原接收模块的 `frame_done → fft_ctrl.fft_frame_done`、`fft_ctrl.fft_rx_start → 原接收模块.start`、`channel_sel` 等连接继续保留。

### B. inverse：接新控制器

| MUX 端口 | PHAT_IFFT_Ctrl 端口 |
|---|---|
| `inverse_config_tdata` | `s_axis_config_tdata` |
| `inverse_config_tvalid` | `s_axis_config_tvalid` |
| `inverse_config_tready` | `s_axis_config_tready` |
| `inverse_data_tdata` | `s_axis_data_tdata` |
| `inverse_data_tvalid` | `s_axis_data_tvalid` |
| `inverse_data_tlast` | `s_axis_data_tlast` |
| `inverse_data_tready` | `s_axis_data_tready` |
| `inverse_result_tdata` | `m_axis_data_tdata` |
| `inverse_result_tvalid` | `m_axis_data_tvalid` |
| `inverse_result_tlast` | `m_axis_data_tlast` |
| `inverse_result_tready` | `m_axis_data_tready` |

### C. core：接真正的 FFT IP

| MUX 端口 | FFT IP 端口 |
|---|---|
| `core_config_tdata/tvalid/tready` | `s_axis_config_tdata/tvalid/tready`，逐个对应 |
| `core_data_tdata/tvalid/tlast/tready` | `s_axis_data_tdata/tvalid/tlast/tready`，逐个对应 |
| `core_result_tdata/tvalid/tlast/tready` | `m_axis_data_tdata/tvalid/tlast/tready`，逐个对应 |

### D. 选择与其他端口

- `select_ifft` 接新控制器 `busy`：0 时原控制器使用 FFT，1 时新控制器使用 IFFT。
- FFT `m_axis_status_tready` 接常量 1，消耗状态输出，避免状态通道堵塞。
- FFT 的 `m_axis_data_tuser`、状态数据可接 ILA 观察。此模块不恢复 BFP 的绝对幅度，仅使用相关峰的位置；每帧的整体正比例缩放不改变理想峰位置，定点舍入仍需实测验证。
- `event_tlast_missing/unexpected` 建议保留在 ILA 中。

**IFFT 输出不能继续直接连接原 FFT 接收模块的 valid。** MUX 会将其送给新控制器，防止相关结果覆盖已经存好的四路频谱。

## 5. 输出的是什么

| 端口 | 用法 |
|---|---|
| `done` | 六组全部完成时高 1 个周期；此时读取全部 `lagXX` 和 `lag_valid` |
| `lag12/13/14/23/24/34` | 六组有符号 16 位整数时延，单位为采样点 |
| `lag_valid[5:0]` | bit0～5 分别对应 12、13、14、23、24、34；1 表示本次通过最低峰值与帧格式检查 |
| `pair_done` | 每一组完成时高 1 周期 |
| `pair_index` | `pair_done=1` 时表示刚完成哪一组，0～5 顺序同上 |
| `pair_lag` | 刚完成这一组的有符号时延 |
| `pair_peak` | 这一组的最大相关实部，供调试；不是经过 BFP 指数恢复的绝对幅值 |
| `frame_error` | 本批次 IFFT 输出 TLAST 位置出错，保持到下一次启动或复位 |

时延约定：`lag_ij = (到达麦i的时间 − 到达麦j的时间) × Fs`。
例如 `lag12=-3` 表示声音先到麦1、后到麦2，相差约 `3/Fs` 秒。ILA 中请把这些总线显示为 **Signed Decimal**。

完成后的结果保持，下一批计算时逐组更新；用 `done` 同步读取整批。`lag_valid` 是基本有效标志，**不是声源可信度或抗噪保证**。

## 6. 运算与参数

每一对麦克风都计算：

```text
C[k] = Xi[k] × conj(Xj[k])
P[k] = C[k] / |C[k]|
r[n] = IFFT(P[k])
在允许的正负时延范围内，找 r[n] 实部最大的点
```

PHAT 内部使用整数平方根和串行除法，输出每个分量为有符号 24 位，数值 `2^22` 代表 1。零幅度或低于 `MIN_MAG` 的频点输出 0。
逐频点复用运算器，不能每周期接受一个非零频点；AXIS valid/ready 会自动控制传输速度，必须使用 Non Real Time 模式。

默认参数：

| 参数 | 默认值 | 含义 |
|---|---|---|
| `RAM_READ_LATENCY` | 2 | 频谱 RAM 的 B 口读延迟 |
| `SAMPLE_RATE` | 44100 | 实际采样率，Hz，必须与 WS 实测一致 |
| `BAND_LOW_HZ` / `BAND_HIGH_HZ` | 300 / 6000 | 对称保留正负频率中的语音频带；其他频点送 0 |
| `MAX_LAG_SIDE` | 9 | 边长对应的最大绝对时延，采样点 |
| `MAX_LAG_DIAG` | 13 | 对角线对应的最大绝对时延，采样点 |
| `MIN_MAG` | 1 | 互功率谱幅度门限；默认仅排除零幅度 |
| `MIN_PEAK` | 0 | 相关峰必须严格大于此门限才有效 |

频带默认保留频点 28～557 及其负频率镜像；DC 和 Nyquist 置零。仍然给 IFFT 发送完整 4096 个点，最后一个点才置 TLAST。

9/13 点搜索范围按 **70mm 正方形、44100Hz、声速343m/s** 设置。2026-10-21 用户确认实际编号为：**1左上、2右上、3右下、4左下**，所以 **13 和 24 是对角线（pair_index=1、4）**。控制器已按此修正。应根据实际布局修改：

`最大点数 = ceil(两麦间距(m) × Fs / 声速(m/s))`

如果仍然使用最初约 111.76mm 的两麦间距，不能直接沿用 9 点范围。四路布局也要核对编号，不能只凭通道名判断对角线。

## 7. 下一批何时开始

当前先采用完整批次顺序：四路 FFT 存好 → 六对 PHAT/IFFT/寻峰 → `done` → 下一批。
新控制器 `busy=1` 期间，MUX 保留 FFT IP 使用权；原控制器被 ready 阻塞，频谱不会被新的 FFT 结果写入。

**现有 Write_Ctrl 的采样 RAM 写入控制仍需单独处理占用关系。** 这四个新文件没有修改它：原 FFT 读取一批采样数据期间，生产端不能覆盖那批采样 RAM。首次联调建议固定一帧，验证六组结果后再接连续采集；若需要采集与计算重叠，再加入完成握手或双缓冲。

## 8. 建议先抓这些 ILA 信号

`busy`、`done`、`pair_done`、`pair_index`、`pair_lag`、`lag_valid`、`frame_error`，以及 FFT 的输入/输出 valid、ready、last 和配置 valid/ready/data。

先以 `pair_done==1` 触发，查看 `pair_index` 与有符号 `pair_lag`；再以 `done==1` 触发检查 `lag_valid==6'b111111` 和六组结果。静音时有效标志允许为 0。

## 9. 已验证范围

运行 `run_tests.ps1` 可复现，结果见 `test_result.txt`、`pair_results.csv`。

- Vivado 2018.3 编译通过。
- PHAT：512 组整数参考结果逐位比较，含零值、极值、输出暂停、TLAST 与复位。
- 完整调度：4 批 × 6 对 × 4096 个 PHAT 输入全部逐位比较，新增实际对角线13的-13点时延测试。
- 数值 IFFT 模型验证已知正/负/零时延、最后一个输出点的峰值、不同增益、静音无效、输入暂停、输出间断、MUX 隔离与 TLAST 异常。
- **仿真的 IFFT 是数值参考模型，不是 Xilinx FFT IP 的位精确模型。真实 FFT IP 的 BFP 舍入、整机资源/时序和板上麦克风数据还要联调。** 不能把仿真耗时直接当作真实硬件处理时延。

`synthesize.tcl` 已对新控制器及 PHAT 运算单元完成独立综合/布局布线：1496 LUT、1124 寄存器、26 DSP、新增 BRAM 为 0；50MHz 内部最差建立时间裕量为 **+3.853ns**。见 `synthesis_result.txt`、`utilization.txt`、`timing_summary.txt`。这些结果不包含已有 FFT、RAM、ILA、模块外部路径和全工程的时序；独立检查中没有设置顶层实际时钟缓冲位置，集成后仍需检查完整时序报告。
