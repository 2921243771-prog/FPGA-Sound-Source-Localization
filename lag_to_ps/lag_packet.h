#ifndef LAG_PACKET_H
#define LAG_PACKET_H
#include <stdint.h>

#define LAG_HAVE_RESULT UINT32_C(0x40)
#define LAG_VALID_MASK UINT32_C(0x3f)
#define LAG_SEQUENCE_MASK UINT32_C(0xffffff)

typedef struct {
    uint32_t sequence;
    unsigned valid_mask;
    unsigned frame_error;
    int lag[6]; /* 12,13,14,23,24,34; signed sample counts */
} LagPacket;

static inline int Lag_Signed16(uint32_t word, unsigned shift)
{
    uint32_t value = (word >> shift) & UINT32_C(0xffff);
    /* Explicit sign extension; do not print the raw u32 as signed. */
    return (value & UINT32_C(0x8000)) ? (int)value - 65536 : (int)value;
}

static inline void Lag_Decode(const uint32_t word[3], uint32_t status,
                              LagPacket *packet)
{
    unsigned i;
    packet->sequence = status >> 8;
    packet->valid_mask = (unsigned)(status & LAG_VALID_MASK);
    packet->frame_error = (unsigned)((status >> 7) & 1U);
    for (i = 0; i < 3; ++i) {
        packet->lag[2U*i] = Lag_Signed16(word[i], 0);
        packet->lag[2U*i+1U] = Lag_Signed16(word[i], 16);
    }
}
#endif
