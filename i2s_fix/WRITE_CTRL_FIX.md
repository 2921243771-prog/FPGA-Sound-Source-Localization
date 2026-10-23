# Write_Ctrl 复位后误启动修正

当前 FIFO 配置的 `Full_Flags_Reset_Value=1`，在复位及恢复期间 full 可以为1。
原 Write_Ctrl 用 full 上升沿启动，但 `fifo_full1` 没有复位。当历史值为0、FIFO因复位拉高full时，控制器会把这个状态当成真正采满2048点，立即搬运空数据。

`tb_Legacy_Reset.sv` 用“空闲时full=0 → 复位时full=1 → 释放后仍为1”的序列复现了旧代码提前写RAM。

修正版 `Write_Ctrl.v`：

- 所有控制寄存器明确复位。
- 将写时钟域的full用两级寄存器同步到读时钟域。
- 必须先观察到full=0，才允许后续full=1启动一批搬运。
- 每批恰好写2048个96位字、发2048次读toggle，不额外弹出第2049次。
- 最后一个RAM写入沿完成后才置Ram_ready。

端口名称和方向与原文件相同，可用此文件内容替换工程原 Write_Ctrl.v，然后刷新BD模块、重新生成和下载bitstream。不要同时保留两个同名模块。

修正版已通过 Vivado 2018.3 仿真：复位full为1时不误启动、重复复位、连续3批共6144字数据/地址/弹出次数逐项比较。FIFO采用FWFT接口模型；本测试不等于完整板级验证。

此文件没有修改现有工程文件。SD1连接、麦3/4赋值已在用户工程中完成。修改前的17:09 bitstream不含本次修正。

下一次上板：以pair_done==1且pair_index==0触发，检查麦1/2的结果及lag_valid[0]。如果仍无效，改抓busy==1且核心输入valid==1，查看PHAT送入IFFT的复数值，继续定位频谱RAM读取与归一化路径。
