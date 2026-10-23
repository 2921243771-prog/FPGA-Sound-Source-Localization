# 当前模块验证与上板前连接检查

检查日期：2026-10-20。依据 D:\FPGA\heelo_world 中已保存的源文件、core.bd 和 XCI。
若你在 Vivado 中还有尚未保存的连线，以保存后的文件重新检查。

最新复查：core.bd 保存时间为2026-10-20 21:10:34。
FFT、fft_ctrl、采样RAM读写口、接收模块和频谱RAM写口时钟均已接FCLK_CLK0。
三个低有效复位已接外部rst_0；配置通道和状态ready常量已补齐。
FIFO的BD参数和XCI均已改为96位、深度2048。
当前还有一个宽度需要修改：xlconstant_1是1位零，连接到48位ifft_data，应将CONST_WIDTH改为48、CONST_VAL保持0。
下文中“原检查”记录此前发现的问题；以本段最新复查和各节的更新说明为准。

## 已完成的验证

- 实际工程里的 fft_ctrl.v 和 FFT_Receive_Store.v 与本目录版本的 SHA256 相同。
- fft_ctrl：FFT模式8帧、IFFT模式2帧，接口模型仿真通过。
- FFT_Receive_Store：7帧，四路地址、最后一点写入、输入空拍、复位和TLAST异常仿真通过。
- 两个真实控制模块联合仿真：2批四路，共32768个复数存储内容逐点检查通过。
  测试包含配置握手、两拍采样RAM、FFT输入暂停、FFT输出空拍、完成反馈和第二批通道切换。
- FFT XCI：4096点、单通道、24位定点、块浮点、自然顺序、Radix-4 Burst，匹配控制模块前提。
- 两块RAM：96位写/24位读/2048深度，48位写读/16384深度，配置方向与方案一致。

以上仿真使用RAM模型及FFT接口模型，未验证真实FFT数值计算、IP生成后的整体工程或板上麦克风。

## BD连接检查记录

### 时钟

已有 processing_system7_0/FCLK_CLK0 为50MHz域提供时钟。
以下引脚在最新已保存BD中已接入FCLK_CLK0：

- fft_ctrl_0/clk
- xfft_0/aclk
- blk_mem_gen_0/clkb

更新：采样RAM写口 blk_mem_gen_0/clka 也已接到FCLK_CLK0，此项完成。
接收模块clk和频谱RAM clka已接FCLK_CLK0。

### 低有效复位

原检查：下列输入已相互连接在网络Net上，但没有复位源：

- fft_ctrl_0/rst
- FFT_Receive_Store_0/rst
- xfft_0/aresetn

应使用同一50MHz时钟域、同步释放的低有效复位。
若使用现有 Processor System Reset，可接其正确配置的 peripheral_aresetn。
FFT的aresetn低电平至少保持2个aclk周期。
更新：上述三个输入已经连到外部低有效rst_0。复位释放的跨时钟同步仍需在顶层完善或板级验证。

### FFT配置通道

补齐三根对应连接：

| 源 | 目的 |
| --- | --- |
| fft_ctrl_0/s_axis_config_tdata | xfft_0/s_axis_config_tdata |
| fft_ctrl_0/s_axis_config_tvalid | xfft_0/s_axis_config_tvalid |
| xfft_0/s_axis_config_tready | fft_ctrl_0/s_axis_config_tready |

更新：三根配置线均已对应连接，原来的悬空问题已解决。
网络名仍保留旧的tvaild拼写，但实际连接的端口是正确的s_axis_config_tvalid，网络名不影响功能。

### 常量输入

- xfft_0/m_axis_status_tready 已接xlconstant_0，实际CONST_WIDTH=1、CONST_VAL=1，正确。
- fft_ctrl_0/ifft_data 已接xlconstant_1，其CONST_VAL=0正确，但CONST_WIDTH仍为1，应改为48以匹配输入。
- 频谱RAM B口暂不使用时，按IP实际端口处理ENB/地址/时钟；开始GCC-PHAT后由读取控制器驱动。

## FIFO与采样RAM搬运还需要验证的点

- 实际FIFO XCI已改为96位、深度2048、独立读写时钟、FWFT。
  与当前帧方案的标称深度一致，板级仍需验证FWFT实际有效容量和满/空标志。
- Write_Ctrl中cnt==2048结束搬运，read_toggle也在结束分支执行一次翻转。
  应以实际成功搬运次数核对rd_en，确认FWFT输出缓存和FIFO实际剩余数据没有造成多弹出一组。
- Write_Ctrl尚未连接fft_ctrl的busy/batch_done，不能确保采样RAM不会在FFT读取四路期间被下一帧覆盖。
  连续运行前需要帧缓存占用控制；先调试时可以先只抓一批。
- FIFO full属于写时钟域；Ram_en由读域控制。跨域状态/控制需要同步，不能只依赖同名网络。
- Write_Ctrl复位仍未初始化fifo_full1、Write_addra和Ram_en，建议补齐。

## 第一批上板观察顺序

1. 保存BD、刷新模块引用，Validate Design通过，再生成相应输出和bitstream。
2. 确认PS已初始化，FCLK_CLK0实际运行；所有低有效复位已释放。
3. ILA触发Ram_ready上升沿，观察配置TVALID/TREADY完成握手。
4. 观察输入TVALID && TREADY；每路4096次，其中前2048点为采样、后2048点为0。
5. 输入TLAST只在最后一个零上有效；若tready=0，TLAST和数据保持。
6. 输出每路4096次握手，接收RAM地址依次覆盖0～4095、4096～8191、8192～12287、12288～16383。
7. frame_done共4个脉冲，channel_valid依次完成，最后all_channels_ready=1、batch_done高一拍。
8. tlast_error以及FFT event_tlast_missing、event_tlast_unexpected应保持0。

建议分两轮ILA抓输入发送和输出接收，避免为了观察全部信号一次占用过多BRAM。

## 可重复运行

- run_test.ps1：接收模块单测。
- run_ctrl_test.ps1：发送模块FFT/IFFT单测。
- run_path_test.ps1：收发联合接口仿真。
- path_test_result.txt：本次联合测试结果。
