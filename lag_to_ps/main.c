#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lag_packet.h"

/* Both GPIO cores: Dual Channel, 32 bits/channel, ALL INPUTS.
 * gpio0 ch1=word0, ch2=word1; gpio1 ch1=word2, ch2=status.
 * This application replaces the old microphone-array printing main().
 */
#if !defined(XPAR_AXI_GPIO_0_DEVICE_ID) || !defined(XPAR_AXI_GPIO_1_DEVICE_ID)
#error "Update the SDK hardware platform and regenerate the BSP for both AXI GPIO cores."
#endif

static int Read_Lag_Snapshot(XGpio *gpio0, XGpio *gpio1, LagPacket *packet)
{
    unsigned attempt;
    for (attempt = 0; attempt < 4; ++attempt) {
        uint32_t before, after, word[3];
        before = XGpio_DiscreteRead(gpio1, 2);
        if (!(before & LAG_HAVE_RESULT)) return 0;
        word[0] = XGpio_DiscreteRead(gpio0, 1);
        word[1] = XGpio_DiscreteRead(gpio0, 2);
        word[2] = XGpio_DiscreteRead(gpio1, 1);
        after = XGpio_DiscreteRead(gpio1, 2);
        if (before == after) {
            Lag_Decode(word, after, packet);
            return 1;
        }
        /* A new PL batch arrived between reads: retry the entire snapshot. */
    }
    return 0;
}

int main(void)
{
    XGpio gpio0, gpio1;
    uint32_t last_sequence = 0;
    int have_last = 0;
    init_platform();
    if (XGpio_Initialize(&gpio0, XPAR_AXI_GPIO_0_DEVICE_ID) != XST_SUCCESS ||
        XGpio_Initialize(&gpio1, XPAR_AXI_GPIO_1_DEVICE_ID) != XST_SUCCESS) {
        xil_printf("LAG GPIO init failed\r\n");
        cleanup_platform();
        return -1;
    }
    /* GPIO direction is fixed by ALL INPUTS in the hardware IP settings. */
    xil_printf("LAG UART ready: waiting for a completed GCC batch\r\n");
    while (1) {
        LagPacket packet;
        if (Read_Lag_Snapshot(&gpio0, &gpio1, &packet)) {
            if (!have_last || packet.sequence != last_sequence) {
                uint32_t advance = (packet.sequence-last_sequence) & LAG_SEQUENCE_MASK;
                if (have_last && advance > 1U) {
                    xil_printf("NOTE: sequence changed by %d (skipped batches or PL reset)\r\n",
                               (int)advance);
                }
                xil_printf("frame=%d valid=0x%02x err=%d lag12=%d lag13=%d lag14=%d lag23=%d lag24=%d lag34=%d\r\n",
                           (int)packet.sequence, (unsigned)packet.valid_mask,
                           (int)packet.frame_error, packet.lag[0], packet.lag[1],
                           packet.lag[2], packet.lag[3], packet.lag[4], packet.lag[5]);
                last_sequence = packet.sequence;
                have_last = 1;
            }
        } else if (!(XGpio_DiscreteRead(&gpio1, 2) & LAG_HAVE_RESULT)) {
            /* A VIO logic reset clears the PL snapshot and its sequence. */
            have_last = 0;
        }
        usleep(1000);
    }
}
