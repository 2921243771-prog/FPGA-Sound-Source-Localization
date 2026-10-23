# 六组 lag → AXI GPIO → PS 串口

## 1. 这次新增什么

`Lag_To_PS.v` 在 `PHAT_IFFT_Ctrl.done=1` 后锁存整批六组结果和有效标志，然后一直保持到下一批完成。
不用让 PS 去捕获一个时钟周期的 `done` 脉冲。

复用原来的两个 AXI GPIO，均改为 **Dual Channel、每通道32位、All Inputs**：

| AXI GPIO | 通道 | 接 Lag_To_PS | 数据含义 |
|---|---:|---|---|
| `axi_gpio_0` | 1 | `gpio_word0[31:0]` | 高16位lag13，低16位lag12 |
| `axi_gpio_0` | 2 | `gpio_word1[31:0]` | 高16位lag23，低16位lag14 |
| `axi_gpio_1` | 1 | `gpio_word2[31:0]` | 高16位lag34，低16位lag24 |
| `axi_gpio_1` | 2 | `gpio_status[31:0]` | 结果编号、有效标志、帧错误 |

GPIO1 通道1原本是输出，本次必须改为输入。GPIO1 通道2原本接FIFO非空，本次改接结果状态。FIFO的读取仍由现有 Write_Ctrl 控制。

## 2. 自动接线

在 **Vivado 中打开当前工程的 core BD**，在底部 Tcl Console 输入：

```tcl
source {C:/Users/Administrator/Desktop/FPGA声源/lag_to_ps/connect_bd.tcl}
```

脚本会先保存、备份原BD到本目录 `backups/`，然后：

1. 添加 `Lag_To_PS.v` 和模块 `Lag_To_PS_0`。
2. 配置已有两个GPIO为双通道32位全输入。
3. 连接六个lag、done、lag_valid、frame_error、clk和rst。
4. 将四个GPIO输入接到结果寄存器。
5. 执行 Validate Design 并保存。

时钟复用PHAT模块的50MHz，复位复用其VIO低有效复位，原有ILA探头不需要更改。
脚本不生成或下载bitstream；如Validate提示其他已有错误，先处理该错误，不能直接跳过。

### 手动连接方式

也可手动添加 `Lag_To_PS.v`，BD添加模块后，同名连接：

```text
PHAT_IFFT_Ctrl_0.clk         → Lag_To_PS_0.clk
PHAT_IFFT_Ctrl_0.rst         → Lag_To_PS_0.rst
PHAT_IFFT_Ctrl_0.done        → Lag_To_PS_0.done
PHAT_IFFT_Ctrl_0.lag12       → Lag_To_PS_0.lag12
PHAT_IFFT_Ctrl_0.lag13       → Lag_To_PS_0.lag13
PHAT_IFFT_Ctrl_0.lag14       → Lag_To_PS_0.lag14
PHAT_IFFT_Ctrl_0.lag23       → Lag_To_PS_0.lag23
PHAT_IFFT_Ctrl_0.lag24       → Lag_To_PS_0.lag24
PHAT_IFFT_Ctrl_0.lag34       → Lag_To_PS_0.lag34
PHAT_IFFT_Ctrl_0.lag_valid   → Lag_To_PS_0.lag_valid
PHAT_IFFT_Ctrl_0.frame_error → Lag_To_PS_0.frame_error
```

clk和rst是在已有时钟/复位网络上增加分支。四个GPIO输入按上表连接。

## 3. 重新生成硬件并更新 SDK

1. Validate Design 通过后，生成 bitstream。
2. **Export Hardware，勾选 Include bitstream。**
3. SDK 更新所用硬件平台，再重新生成 BSP。
4. 把本目录 `main.c` 的内容替换到当前应用的入口C文件，例如原 `helloworld.c`。不要同时留下两个 `main()`。
5. 将 `lag_packet.h` 加到同一个应用 `src` 目录。
6. Build，下载新bitstream并运行应用。串口设置沿用原来能够正常打印的配置。

新程序使用现有 `XPAR_AXI_GPIO_0_DEVICE_ID` 和 `XPAR_AXI_GPIO_1_DEVICE_ID`，不硬编码基地址。
方向由IP的All Inputs固定，因此C程序不需要再次设置方向，也不再输出read_toggle。

## 4. 输出示例

```text
LAG UART ready: waiting for a completed GCC batch
frame=1 valid=0x3f err=0 lag12=-3 lag13=2 lag14=-1 lag23=5 lag24=2 lag34=-3
```

示例是格式演示，不是用户板上的实测值。

- 六个lag用有符号十进制打印，单位是采样点，顺序为12、13、14、23、24、34。
- `valid` 的bit0～5对应六对；`0x3f` 表示全部通过当前基本有效检查。
- `err=1` 表示该批次有IFFT帧格式错误。
- `frame` 每完成一批加1；同一批只打印一次。
- 上电后没有完成新批次时，只显示等待提示。若采集未开始，启动SDK程序后通过VIO复位、释放采集逻辑。
- 第一次运行时，PL若已有锁存结果，PS会立即打印这一批，不需要强制重新采集。

## 5. 为什么要锁存和编号

原来的六个lag在一批计算中逐对更新。PS若直接边读边打印，可能把不同批次的数据混在一行。
桥接模块等六对全部完成后才同时发布数据与状态。PS先读一次状态，读取三个数据字，再读一次状态：

```text
状态前 → 三个数据字 → 状态后
         两次状态相同：接受这批
         两次状态不同：重新读取
```

三个数据字用16位补码保存时延。`lag_packet.h` 明确做符号扩展，例如 `0xFFFD → -3`，避免误打印成65533。

状态字布局：

```text
[31:8]：24位批次编号，循环计数
[7]   ：该批次frame_error
[6]   ：至少已经锁存过一批结果
[5:0] ：六组lag_valid
```

此接口保存最新一批，不会为串口排队保留所有历史批次。PS被串口或其他工作阻塞而跳过批次时，程序会提示编号跳变；不会通过停止算法来等待串口。当前用于打印定位结果，不传原始音频数组。

## 6. 验证范围

- Vivado 2018.3仿真：六个16位有符号数打包、结果保持、done与最后一个lag同拍更新、valid/error、编号回绕、重复复位。
- C解码测试：全部65536种16位值，在高低两半字中都正确解码，包含-32768与32767。
- SDK 2018.3的ARM编译器已使用当前mic_app2的BSP参数和库源码头文件编译main.c，开启-Wall -Wextra -Werror，通过。当前导出的BSP include目录只有xparameters.h，更新硬件后应重新生成/构建BSP，补齐正常编译需要的头文件。
- 自动接线脚本在临时BD中检查；真实工程的最终Validate、bitstream和板上串口打印仍需执行上述接入步骤。
