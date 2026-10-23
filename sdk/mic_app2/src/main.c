#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lag_packet.h"
#include "localize_2d.h"

#define SAMPLE_RATE_HZ 44100.0f
#define SOUND_SPEED_MPS 343.0f

static int Read_Lag_Snapshot(XGpio *gpio0,XGpio *gpio1,LagPacket *packet)
{
    unsigned attempt;
    for(attempt=0;attempt<4;++attempt) {
        uint32_t before,after,word[3];
        before=XGpio_DiscreteRead(gpio1,2);
        if(!(before&LAG_HAVE_RESULT)) return 0;
        word[0]=XGpio_DiscreteRead(gpio0,1);
        word[1]=XGpio_DiscreteRead(gpio0,2);
        word[2]=XGpio_DiscreteRead(gpio1,1);
        after=XGpio_DiscreteRead(gpio1,2);
        if(before==after) {Lag_Decode(word,after,packet);return 1;}
    }
    return 0;
}

static void Print_Location(const LagPacket *packet)
{
    LocResult result;
    float delay[6];
    unsigned i;
    for(i=0;i<6;++i) delay[i]=(float)packet->lag[i];
    Loc_Estimate(delay,packet->valid_mask,packet->frame_error,&result);
    if(!result.bearing_valid) {
        xil_printf(" azimuth=UNRESOLVED range=UNRESOLVED reason=%s\r\n",Loc_StatusText(result.status));
    } else {
        xil_printf(" azimuth_deg=%d",result.azimuth_deg);
        if(result.range_valid) {
            xil_printf(" range_est_cm=%d range_band_cm=%d..%d",
                (int)(result.range_m*100+.5f),(int)(result.range_lo_m*100+.5f),
                (int)(result.range_hi_m*100+.5f));
        } else xil_printf(" range=UNRESOLVED");
        xil_printf(" fit_milli_sample=%d\r\n",(int)(result.rms_samples*1000+.5f));
    }
}

int main(void)
{
    XGpio gpio0,gpio1;
    uint32_t last_sequence=0;
    int have_last=0;
    init_platform();
    xil_printf("Location model: 7cm square, 1=TL 2=TR 3=BR 4=BL, same-plane source\r\n");
    if(!Loc_Init(SAMPLE_RATE_HZ,SOUND_SPEED_MPS)) {
        xil_printf("Location model init failed\r\n");
        cleanup_platform();return -1;
    }
    if(XGpio_Initialize(&gpio0,XPAR_AXI_GPIO_0_DEVICE_ID)!=XST_SUCCESS ||
       XGpio_Initialize(&gpio1,XPAR_AXI_GPIO_1_DEVICE_ID)!=XST_SUCCESS) {
        xil_printf("LAG GPIO init failed\r\n");
        cleanup_platform();return -1;
    }
    xil_printf("LAG UART ready: azimuth 0=front +90=right -90=left 180=back; range from array center\r\n");
    while(1) {
        LagPacket packet;
        if(Read_Lag_Snapshot(&gpio0,&gpio1,&packet)) {
            if(!have_last || packet.sequence!=last_sequence) {
                uint32_t advance=(packet.sequence-last_sequence)&LAG_SEQUENCE_MASK;
                if(have_last && advance>1U)
                    xil_printf("NOTE: sequence changed by %d (skipped batches or PL reset)\r\n",(int)advance);
                xil_printf("frame=%d valid=0x%02x err=%d lag12=%d lag13=%d lag14=%d lag23=%d lag24=%d lag34=%d",
                    (int)packet.sequence,(unsigned)packet.valid_mask,(int)packet.frame_error,
                    packet.lag[0],packet.lag[1],packet.lag[2],packet.lag[3],packet.lag[4],packet.lag[5]);
                Print_Location(&packet);
                last_sequence=packet.sequence;have_last=1;
            }
        } else if(!(XGpio_DiscreteRead(&gpio1,2)&LAG_HAVE_RESULT)) have_last=0;
        usleep(1000);
    }
}
