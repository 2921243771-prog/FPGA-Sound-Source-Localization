# RAM 读取与 FFT/IFFT 发送控制

将 `fft_ctrl.v` 添加到 Vivado Design Sources，替换你原来的同名模块。
不要同时保留两个 `module fft_ctrl` 定义。

## FFT / IFFT 参数

新增参数 `IFFT_MODE`，默认 0，保持原来的四路 FFT 工作方式：

```verilog
fft_ctrl #(
    .RAM_READ_LATENCY(2),
    .IFFT_MODE(0) // 0: FFT; 1: IFFT
) u_fft_ctrl (
    // 根据下表连接端口
);
```

| 项目 | IFFT_MODE=0 | IFFT_MODE=1 |
| --- | --- | --- |
| 配置字 | 8'h01，FFT | 8'h00，IFFT |
| 有效数据输入 | data[23:0] | ifft_data[47:0] |
| 数据内容 | 2048个实数采样 + 2048个零 | 完整4096个复数PHAT结果，无额外补零 |
| 输入RAM地址 | {采样编号, 通道编号} | 0～4095，使用 addrb[11:0] |
| 一次 Ram_ready 上升沿 | 处理4路麦克风 | 处理1组麦克风对的IFFT |
| 输出完成通知 | 四路频谱接收完成后 batch_done | 这一组相关结果接收完成后 batch_done |

FFT 模式新增的 `ifft_data` 输入接 48'b0；IFFT 模式不使用的 `data` 输入接 24'b0。
IFFT 输入工作 RAM 设置为48位宽、4096深度，其 doutb 接 ifft_data。
仍然根据该RAM的实际延迟设置 RAM_READ_LATENCY，不能把虚部丢掉或对后半帧补零。
IFFT 模式 addrb 保留13位以兼容已有接口，最高位恒0，连接4096深度RAM时用低12位。

IFFT 输入应为一对麦克风的互功率谱经过 PHAT 加权后的复数序列，不是某一路原始采样或单独的FFT频谱。
六组相关可由上层依次准备一组PHAT工作RAM，产生一次Ram_ready上升沿，等batch_done后准备下一组。
ifft_data 仍然是高24位虚部、低24位实部；enb 和等待时序复用原来的读取逻辑。

IFFT 输出应接相关结果接收/寻峰模块，不要覆盖还要供其他麦克风对读取的四路FFT频谱RAM。
该接收模块在完整4096点处理结束后产生完成脉冲，接回 fft_frame_done。
fft_rx_start 是每次变换的接收启动脉冲，IFFT 时也有效，channel_sel 固定0，麦克风对编号由上层管理。

**parameter 在综合前固定，不能在板上运行时修改。**
这版支持同一个模块源码分别生成FFT控制器或IFFT控制器；若最终只复用一套物理FFT IP动态切换方向，
下一步需将模式改成帧开始时锁存的输入，并增加总调度/数据源选择，不能将两个控制器输出直接并接。

## 配置前提

- 采样 RAM：96 位写、深度 2048；24 位读、深度 8192。
- 写入顺序为 `{data4, data3, data2, data1}`。
- 读地址为 `{11位采样编号, 2位通道编号}`。
- 你截图的 Port B Read Latency = 2，模块默认 `RAM_READ_LATENCY=2`。
- 如果 RAM 暴露了输出寄存器使能 REGCEB，保持有效；读取期间 ENB 保持有效。
- FFT：单通道、固定 4096 点、24 位 Block Floating Point、Natural Order。
- 控制模块 clk、采样 RAM clkb、FFT aclk、接收模块 clk、频谱 RAM clka 使用同一个时钟。
- rst 为低有效复位；顶层同步释放，并协调 FFT、RAM/FIFO、收发控制复位。
- Ram_ready 必须已经同步到 clk 域，表示完整四路采样帧已经存好。

## 与原代码相比的接口变化

- 正确的输出名称是 `s_axis_data_tvalid`，原来的 `s_axis_data_tvaild` 拼写已修正。
- 删除重复的输入 `s_axis_data_tvalid`。
- 删除未使用的 `sample_viald`。
- 新增 `ifft_data[47:0]`；FFT模式请接48'b0，原来的data仍接采样RAM的24位输出。
- 新增输出 `channel_sel[1:0]`、`fft_rx_start`，接频谱接收模块。
- 新增输入 `fft_frame_done`，接频谱接收模块的 `frame_done`。
- 新增输出 `busy`、`batch_done`，供上层采集与帧缓存控制使用。

## 接线

| fft_ctrl 端口 | 连接 |
| --- | --- |
| addrb[12:0] | 采样 RAM addrb |
| enb | 采样 RAM enb |
| data[23:0] | 采样 RAM doutb |
| ifft_data[47:0] | FFT模式接48'b0；IFFT模式接PHAT工作RAM的48位doutb |
| tdata[47:0] | FFT s_axis_data_tdata |
| s_axis_data_tvalid/tlast | FFT 同名输入 |
| s_axis_data_tready | FFT 同名输出 |
| s_axis_config_tdata/tvalid | FFT 同名输入 |
| s_axis_config_tready | FFT 同名输出 |
| fft_rx_start | FFT_Receive_Store.start |
| channel_sel[1:0] | FFT_Receive_Store.channel_sel |
| fft_frame_done | FFT_Receive_Store.frame_done |
| Ram_ready | 采样帧 RAM 存满后的就绪信号（先同步时钟域） |
| busy | 本批次四路 FFT 尚未全部完成 |
| batch_done | 四路频谱均已接收存储，单周期脉冲 |

FFT M_AXIS_DATA 仍接 `FFT_Receive_Store`，后者接独立的 48 位 × 16384 频谱 RAM。
FFT `m_axis_status_tready` 暂时接常量 1。
本模块已直接产生 `fft_rx_start`，不用额外再放 AND 门。

## 顺序

```text
Ram_ready 上升沿
  → 通道0配置握手（同时启动频谱接收模块）
  → 逐点读取2048个采样，各次读取等待2拍，再锁存到发送寄存器
  → 每个点保持到 FFT 输入握手成功
  → 连续发送2048个零（遇到背压则暂停）
  → 等接收模块 frame_done，确认4096个输出点已存完
  → 对通道1、2、3重复
  → batch_done 脉冲
```

地址和发送位置仅在当前输入点握手成功后推进。
最后一个零（总位置4095）携带 TLAST，握手未完成时数据、TVALID、TLAST 均保持不变。
不是看到 TREADY 才临时产生一个有效脉冲；准备好数据就拉高 TVALID。

WAIT_RAM 的最后一拍，RAM 才在该上升沿之后更新输出；下一拍 LATCH_RAM 再采样，避免拿到旧值。
真实采样每点使用请求、等待、锁存、发送的步骤；补零无需访问 RAM，可以连续每拍发送一个。
这版优先保证接口和帧对应正确，并未实现真实采样每拍连续读取的流水线。

## 帧缓存所有权

同一批次读取四路时，原始采样 RAM 内容必须保持不变，不能重新搬运下一批覆盖它。
Ram_ready 上升沿只在空闲时接受；busy 期间的上升沿不会排队保存。
Ram_ready 一直保持高不会重复启动；下一批应先拉低，再在新帧真正可用时拉高。

接收模块的 all_channels_ready 可通知 GCC-PHAT 四路频谱可用。
下一批 FFT 会覆盖频谱 RAM，必须等后续 GCC-PHAT 不再读取旧频谱后再启动，或另做乒乓缓冲。
本模块不会自动裁决 GCC-PHAT 对频谱 RAM 的占用。

## 验证范围

`tb_fft_ctrl.sv` 使用两拍同步 RAM 模型和带握手暂停/结果延迟的 FFT 接口模型。
验证四路各2048个采样的地址和数值、每路2048个补零、TLAST、握手期间稳定性、配置、
等待频谱接收完成后才切换通道、帧中复位、Ram_ready 保持高不重启、第二批重新开始。

新增的IFFT测试使用高24位非零的复数输入，验证完整4096点、后半帧未被补零、配置方向、
最后一点TLAST、两批单帧处理及握手暂停和复位。

此仿真不执行数值 FFT/IFFT，不代替真实 FFT/RAM IP 的联合仿真与板级验证。
运行 `run_ctrl_test.ps1` 可使用本机 Vivado 2018.3 XSim 重现两种模式的检查。
