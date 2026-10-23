#include <assert.h>
#include <stdio.h>
#include "lag_packet.h"
int main(void)
{
    uint32_t i, word[3] = {UINT32_C(0x0009fff3),UINT32_C(0x0000ffff),UINT32_C(0x80007fff)};
    LagPacket packet;
    const int expected[6] = {-13,9,-1,0,32767,-32768};
    for(i=0;i<65536U;++i) {
        int value = i < 32768U ? (int)i : (int)i-65536;
        assert(Lag_Signed16(i,0)==value);
        assert(Lag_Signed16(i<<16,16)==value);
    }
    Lag_Decode(word,UINT32_C(0x1234567f),&packet);
    assert(packet.sequence==UINT32_C(0x123456) && packet.valid_mask==63 && packet.frame_error==0);
    for(i=0;i<6;++i) assert(packet.lag[i]==expected[i]);
    Lag_Decode(word,UINT32_C(0x000002c0),&packet);
    assert(packet.sequence==2 && packet.valid_mask==0 && packet.frame_error==1);
    puts("PASS C packet decoder: every 16-bit signed value in both lanes, all six lags, sequence, validity and error bits");
    return 0;
}
