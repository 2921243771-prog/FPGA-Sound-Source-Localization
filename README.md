# FPGA-Sound-Source-Localization

基于 **Zynq-7020 + 四只 INMP441** 的声源定位实验项目。PL 完成四路音频采集、FFT、GCC-PHAT、IFFT 和时延寻峰；PS 读取六组时延，估计平面内方位角，并通过串口输出。

开发环境：**Vivado / Xilinx SDK 2018.3**，器件 `xc7z020clg400-1`。

## 数据流程

```text
四只 INMP441（共用 SCK / WS，两条 SD）
    → 四路 24 位采样 → FIFO → 采样 RAM
    → 四组 4096 点 FFT → 频谱 RAM
    → 六组互功率谱与 PHAT → 六组 IFFT → 时延寻峰
    → AXI GPIO → PS 方位估计 → UART
```

每通道每帧采集 2048 个点，补零到 4096 点。一个 FFT IP 在正变换和逆变换之间复用。算法时钟为 50 MHz；当前采样率参数为 44100 Hz，实板频率仍应测量确认。

## 文件目录

| 目录 | 内容 |
|---|---|
| `vivado/` | 实际 Vivado 工程快照、BD、XDC、RTL 和 IP 文件；入口为 `heelo_world.xpr` |
| `sdk/` | 实际 SDK 工程与硬件导出；当前应用为 `mic_app2`，BSP 为 `mic_app2_bsp`；其余应用是历史版本 |
| `fft_store/` | FFT 发送控制、结果接收存储、仿真与说明 |
| `i2s_fix/` | I2S 通道映射、FIFO 到 RAM 控制、相关回归测试 |
| `phat_ifft/` | PHAT、IFFT 调度、FFT/IFFT 复用、数值参考模型及测试向量 |
| `lag_to_ps/` | 六组时延打包、GPIO 连接脚本、PS 解包示例 |
| `ps_localization/` | PS 平面方位和近场距离估计源码、测试、SDK 安装脚本 |
| `gcc_phat/` | 早期方案存档，**不是当前 Vivado 工程使用的算法链路** |
| `artifacts/implemented/` | 上传时本机保存的 bitstream 与匹配的 LTX 快照 |
| `artifacts/hardware_debug/` | 已保存的 Hardware Manager / ILA 波形与布局快照 |
| `scripts/` | 工程文件收集工具和源码路径检查脚本 |

`snapshot_manifest.json` 记录快照文件的 SHA-256、原文件修改时间和排除的生成文件。保留了历史备份、测试向量、MATLAB 脚本、测试记录和已有编译产物快照；编译缓存、临时日志及 IDE 工作区状态不纳入版本管理。

## 从仓库打开

1. 将仓库放到较短的路径，例如 `D:/ssloc`。Vivado 2018.3 插入 ILA 时对临时路径长度敏感。
2. 使用 Vivado 2018.3 打开 `vivado/heelo_world.xpr`。原工程引用的外部 RTL 已复制到 `vivado/heelo_world.srcs/sources_1/imports/`，工程引用已改为内部路径。
3. 确认 BD 模块引用和 IP 状态，按需重新生成 Output Products，再综合、实现并生成 bitstream。
4. 导出与新 bitstream 对应的硬件，在 SDK 中导入 `sdk/mic_app2` 和 `sdk/mic_app2_bsp`，更新硬件平台、重新生成 BSP 并编译应用。其他 SDK 应用保留作历史参考。
5. `sdk` 中已有 HDF/硬件平台与 `artifacts` 中 bitstream 的生成时间可能不同，**使用前重新导出匹配的硬件平台**。本次上传不表示已经重新完成整机编译和上板验证。

Vivado 工程使用的是快照内的 RTL。修改顶层 `phat_ifft/` 等开发目录后，需要同步更新工程使用的文件或调整工程引用，避免两份源码产生差异。旧安装/接线脚本保留了原机器路径，执行前应检查其参数和目标路径。

## 阵列与时延约定

四只麦克风组成边长约 **7 cm** 的正方形：

```text
                   前方 +Y，0°
              麦1 ─────── 麦2
               │   中心    │       右方 +X，+90°
              麦4 ─────── 麦3
                   后方 ±180°
```

- 第一条数据线：RTL `SD`，左槽为麦1，右槽为麦2。
- 第二条数据线：RTL `SD1`，左槽为麦4，右槽为麦3。
- 六组时延依次为 `12、13、14、23、24、34`。
- `lag_ij = (t_i - t_j) × Fs`，正值表示麦 i 比麦 j 晚收到声音。
- 复数总线 `[47:24]` 为虚部，`[23:0]` 为实部；两者均为有符号 24 位。

## 验证状态和限制

- 已有模块级仿真覆盖 AXI Stream 反压、RAM 延迟、复位、通道映射、PHAT 定点运算、时延打包等情况，具体记录见各目录。
- PHAT/IFFT 仿真中的 IFFT 是数值参考模型，**不是 Xilinx FFT IP 的逐位精确模型**。
- 实板曾通过 ILA 观察到六组结果有效及非零时延；完整定位精度、真实处理时延、持续采集能力仍需系统测试。
- PS 方位/距离程序已有合成数据测试及 ARM 编译记录，尚不代表已经完成实际声源标定。
- 距离估计假设声源与阵列大致同平面。7 cm 阵列和整数采样点时延对距离的分辨能力有限；程序允许输出 `range=UNRESOLVED`。
- 原 XDC 及历史 BD/SDK 文件按当前保存状态归档。使用前应核对板卡引脚与实际顶层端口；历史 `rst_0` 约束可能需要随当前 BD 更新。

第三方 IP、SDK 驱动及相关生成文件保留其原有版权声明。仓库未额外授予这些文件新的许可。
