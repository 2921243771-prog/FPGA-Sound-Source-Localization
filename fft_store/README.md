# FFT 接收与频谱存储

`FFT_Receive_Store.v` 是接收控制模块，RAM 由你在 Vivado 中添加。
它不替代 FFT 的输入发送模块，也不修改现有采集工程。

## 适用配置

- FFT：单通道、4096 点、24 位 Block Floating Point、Natural Order。
- 每次运行一个麦克风的 FFT，接收端按指定通道保存结果。
- 四路分别占用一块频谱 RAM 的不同区域。
- 接收模块 `clk`、FFT `aclk`、频谱 RAM `clka` 必须是同一个时钟。
- `rst` 为低有效复位，顶层应同步释放复位。

## 频谱 RAM 配置

Block Memory Generator：

| 项目 | 设置 |
| --- | --- |
| Mode | Stand Alone |
| Interface（若出现） | Native |
| Memory Type | Simple Dual Port RAM |
| Port A Write Width | 48 |
| Port A Write Depth | 16384 |
| Port B Read Width | 48 |
| Byte Write Enable | 不勾选 |

A 口地址宽度为 14 位。B 口留给后面的 GCC-PHAT 读取逻辑。
B 口读取延迟按该 RAM 自己的配置处理，与接收写入无关。
不要把此 RAM 与 96 位写、24 位读的原始采样 RAM 混为一块。

## 接线

| 模块端口 | 连接 |
| --- | --- |
| clk | FFT aclk 和频谱 RAM clka 的同一时钟 |
| rst | 低有效复位 |
| start | FFT 发送状态机产生的单周期启动脉冲 |
| channel_sel[1:0] | 当前麦克风编号 0、1、2、3 |
| m_axis_data_tdata[47:0] | FFT 的同名输出 |
| m_axis_data_tvalid | FFT 的同名输出 |
| m_axis_data_tlast | FFT 的同名输出 |
| m_axis_data_tready | 接回 FFT 的同名输入 |
| ram_ena | 频谱 RAM ena |
| ram_wea | 频谱 RAM wea（若显示 [0:0]，直接接 1 位） |
| ram_addra[13:0] | 频谱 RAM addra |
| ram_dina[47:0] | 频谱 RAM dina |

FFT 的 M_AXIS_STATUS 是另一组接口。本模块不处理块指数。
若暂时不保存状态，让 FFT `m_axis_status_tready` 接常量 1，防止状态通道堵塞。
需要还原绝对幅度时，另行记录每次变换的 BLK_EXP；PHAT 的整体幅度归一化可以消除正比例缩放。

## 一路变换的操作顺序

1. 等 `busy=0`，准备 `channel_sel`，让 `start=1` 保持一个时钟周期。
2. 拉低 `start`。模块已锁存通道，置 `busy=1`，准备接收 FFT 输出。
3. FFT 输入控制模块完成配置握手，发送 2048 个真实采样和 2048 个零。
4. 本模块在每次 FFT 输出 `tvalid && tready` 的上升沿写入一个 48 位复数。
5. 接收第 4096 点的同一个上升沿，RAM 写入最后一点；随后 `frame_done` 高一拍、`busy=0`。
6. 完成后才能启动下一路。`start` 在 busy=1 时会被忽略，包括最后一点传输的那个上升沿。
7. 全部四路完成，`all_channels_ready=1`，可启动后续六组 GCC-PHAT。

`start` 必须在 FFT 开始输出之前送达，不能等 FFT 的输出 TLAST 才启动。
输入发送完 4096 点不等于 FFT 结果已经全部存好，要等待本模块的 `frame_done`。
复位或新一批处理时，应协调复位/清理整个数据通路，不能让上一帧未读出的 FFT 数据混入下一帧。

## 输出信号含义

- `busy`：本模块正在接收一帧。
- `frame_done`：一帧 4096 点全部写入，单周期脉冲。
- `frame_channel`：当前或刚完成的通道编号。
- `channel_valid[3:0]`：本批次各通道已存满；同一通道重新 start 时该位清零，完成后置一。
- `all_channels_ready`：上述四位全为一。四路齐全之后，下一次 start 自动开始新批次，先清除四路完成标志，防止旧帧被误认为新批次已完成。
  这不会清除 RAM 内容；上层必须等 GCC-PHAT 不再使用旧频谱之后，再启动新一批的接收。
- `tlast_error`：输入 TLAST 出现在错误位置，或最后一点缺少 TLAST；保持到下一次 start 或复位。
  异常时仍接满 4096 点，不会提前截断。`channel_valid` 表示存满，是否使用这帧还要检查错误。

## 地址与数据

| 通道编号 | RAM 写地址 |
| --- | --- |
| 0 | 0～4095 |
| 1 | 4096～8191 |
| 2 | 8192～12287 |
| 3 | 12288～16383 |

数据原样保存：`dina[23:0]` 为实部，`dina[47:24]` 为虚部，两者均为 24 位补码。
地址仅在输出握手成功时推进，输入无效或模块未启动时不写入。
同一个通道重新 start 会覆盖旧频谱，须等后续算法不再使用旧数据后操作。

## 仿真

`tb_FFT_Receive_Store.sv` 使用同步写 RAM 模型检查：

- 四路不同启动顺序、完整的 16384 个频点内容和分区。
- FFT 输出 tvalid 断续时不漏点、不推进地址。
- 第 4096 点实际写入、完成脉冲、禁止第 4097 次写入。
- 未启动时拒收、帧中复位、重复启动同一通道、新批次清除旧完成标志。
- 提前 TLAST、缺少 TLAST、下一帧错误标志清除。

这是接收控制模块的仿真，不替代真实 FFT IP、RAM IP 和完整工程的联合仿真与板级验证。
