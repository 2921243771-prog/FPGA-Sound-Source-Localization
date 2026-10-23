#ifndef LOCALIZE_2D_H
#define LOCALIZE_2D_H

/* Coordinates in meters, viewed from above:
 *       +Y / front / azimuth0
 *      1 -------- 2
 *      |  70mm   |
 *      4 -------- 3      +X / right / azimuth+90
 * Source is assumed to lie in this same plane. Lag order: 12,13,14,23,24,34.
 */
#define LOC_SIDE_M 0.070f
#define LOC_FINITE_RADII 64
#define LOC_ANGLES 180
#define LOC_RADIUS_MIN_M 0.025f
#define LOC_RADIUS_MAX_M 3.0f
#define LOC_MAX_RMS_SAMPLES 0.75f
#define LOC_QUANT_TOL_SAMPLES 0.5f
#define LOC_MAX_BEARING_SPAN_DEG 40

typedef enum {
    LOC_OK=0, LOC_NOT_INITIALIZED, LOC_FRAME_ERROR, LOC_TOO_FEW_PAIRS,
    LOC_BAD_GEOMETRY, LOC_PHYSICAL_LIMIT, LOC_ZERO_DELAYS,
    LOC_INCONSISTENT, LOC_AMBIGUOUS_DIRECTION
} LocStatus;

typedef struct {
    LocStatus status;
    int bearing_valid;
    int range_valid;
    int azimuth_deg;             /* 0 front,+90 right,-90 left,180 back */
    int bearing_span_deg;        /* grid support width, not a statistical CI */
    float range_m;              /* use only when range_valid is true */
    float range_lo_m;
    float range_hi_m;
    int range_upper_open;       /* accepted solutions extend beyond search */
    float rms_samples;
} LocResult;

int Loc_Init(float sample_rate_hz, float sound_speed_mps);
/* Fractional samples supported; current PL integer lags are converted to float. */
LocStatus Loc_Estimate(const float lag[6], unsigned valid_mask,
                      unsigned frame_error, LocResult *result);
const char *Loc_StatusText(LocStatus status);
#endif
