#include "localize_2d.h"
#include <math.h>
#include <string.h>
#include <float.h>

#define LOC_RADII (LOC_FINITE_RADII+1)
#define LOC_FAR_INDEX LOC_FINITE_RADII
#define LOC_PI 3.14159265358979323846f

static const unsigned char first_mic[6]={0,0,0,1,1,2};
static const unsigned char second_mic[6]={1,2,3,2,3,3};
static const float mic[4][2]={
    {-LOC_SIDE_M/2, LOC_SIDE_M/2},
    { LOC_SIDE_M/2, LOC_SIDE_M/2},
    { LOC_SIDE_M/2,-LOC_SIDE_M/2},
    {-LOC_SIDE_M/2,-LOC_SIDE_M/2}
};
/* About324KB in DDR .bss, never placed on the small SDK stack. */
static float model[LOC_RADII][LOC_ANGLES][6];
static float costs[LOC_RADII][LOC_ANGLES];
static float radii[LOC_FINITE_RADII], physical_limit[6];
static int initialized;

int Loc_Init(float fs, float c)
{
    unsigned r,a,p,i;
    float scale;
    initialized=0;
    if(!isfinite(fs)||!isfinite(c)||fs<=0||c<=0) return 0;
    scale=fs/c;
    for(p=0;p<6;++p) {
        float dx=mic[second_mic[p]][0]-mic[first_mic[p]][0];
        float dy=mic[second_mic[p]][1]-mic[first_mic[p]][1];
        physical_limit[p]=sqrtf(dx*dx+dy*dy)*scale;
    }
    for(r=0;r<LOC_FINITE_RADII;++r)
        radii[r]=LOC_RADIUS_MIN_M*powf(LOC_RADIUS_MAX_M/LOC_RADIUS_MIN_M,
                                      (float)r/(LOC_FINITE_RADII-1));
    for(a=0;a<LOC_ANGLES;++a) {
        float angle=2*LOC_PI*(float)a/LOC_ANGLES;
        float ux=sinf(angle),uy=cosf(angle);
        for(r=0;r<LOC_FINITE_RADII;++r) {
            float distance[4];
            for(i=0;i<4;++i) {
                float dx=radii[r]*ux-mic[i][0];
                float dy=radii[r]*uy-mic[i][1];
                distance[i]=sqrtf(dx*dx+dy*dy);
            }
            for(p=0;p<6;++p)
                model[r][a][p]=(distance[first_mic[p]]-distance[second_mic[p]])*scale;
        }
        /* Explicit plane-wave limit: do not invent a finite distance for it. */
        for(p=0;p<6;++p) {
            float dx=mic[second_mic[p]][0]-mic[first_mic[p]][0];
            float dy=mic[second_mic[p]][1]-mic[first_mic[p]][1];
            model[LOC_FAR_INDEX][a][p]=(dx*ux+dy*uy)*scale;
        }
    }
    initialized=1;
    return 1;
}

LocStatus Loc_Estimate(const float lag[6], unsigned mask, unsigned error,
                      LocResult *out)
{
    unsigned p,r,a,count=0,nonzero=0;
    unsigned best_r=0,best_a=0,first_r=LOC_RADII,last_r=0;
    int min_delta=180,max_delta=-180;
    float best=FLT_MAX,threshold,xx=0,xy=0,yy=0;
    memset(out,0,sizeof(*out));
    out->status=LOC_NOT_INITIALIZED;
    if(!initialized) return out->status;
    if(error) return out->status=LOC_FRAME_ERROR;
    mask&=63U;
    for(p=0;p<6;++p) if(mask&(1U<<p)) {
        float dx=mic[second_mic[p]][0]-mic[first_mic[p]][0];
        float dy=mic[second_mic[p]][1]-mic[first_mic[p]][1];
        if(!isfinite(lag[p]) || fabsf(lag[p])>physical_limit[p]+0.75f)
            return out->status=LOC_PHYSICAL_LIMIT;
        xx+=dx*dx;xy+=dx*dy;yy+=dy*dy;
        ++count;
        if(fabsf(lag[p])>0.001f) ++nonzero;
    }
    if(count<3) return out->status=LOC_TOO_FEW_PAIRS;
    if(xx*yy-xy*xy<1e-10f) return out->status=LOC_BAD_GEOMETRY;
    if(!nonzero) return out->status=LOC_ZERO_DELAYS;
    for(r=0;r<LOC_RADII;++r) for(a=0;a<LOC_ANGLES;++a) {
        float sum=0;
        for(p=0;p<6;++p) if(mask&(1U<<p)) {
            float delta=model[r][a][p]-lag[p];
            sum+=delta*delta;
        }
        sum/=(float)count;
        costs[r][a]=sum;
        if(sum<best) {best=sum;best_r=r;best_a=a;}
    }
    out->rms_samples=sqrtf(best);
    if(out->rms_samples>LOC_MAX_RMS_SAMPLES)
        return out->status=LOC_INCONSISTENT;

    /* Quantization-aware support set: no Gaussian confidence claim. */
    threshold=best+LOC_QUANT_TOL_SAMPLES*LOC_QUANT_TOL_SAMPLES;
    for(r=0;r<LOC_RADII;++r) for(a=0;a<LOC_ANGLES;++a) if(costs[r][a]<=threshold) {
        int delta=((int)a-(int)best_a)*(360/LOC_ANGLES);
        while(delta>180) delta-=360;
        while(delta< -180) delta+=360;
        if(delta<min_delta) min_delta=delta;
        if(delta>max_delta) max_delta=delta;
        if(r<first_r) first_r=r;
        if(r>last_r) last_r=r;
    }
    out->azimuth_deg=(int)best_a*(360/LOC_ANGLES);
    if(out->azimuth_deg>180) out->azimuth_deg-=360;
    out->bearing_span_deg=max_delta-min_delta;
    if(out->bearing_span_deg>LOC_MAX_BEARING_SPAN_DEG)
        return out->status=LOC_AMBIGUOUS_DIRECTION;
    out->bearing_valid=1;

    /* Expand finite support by one grid cell to avoid false precision. */
    out->range_lo_m=radii[first_r>0 ? first_r-1 : 0];
    out->range_upper_open=(last_r>=LOC_FINITE_RADII-1);
    out->range_hi_m=radii[last_r<LOC_FINITE_RADII-1 ? last_r+1 : LOC_FINITE_RADII-1];
    if(best_r<LOC_FINITE_RADII) out->range_m=radii[best_r];
    out->range_valid=best_r<LOC_FINITE_RADII && first_r>0 &&
        !out->range_upper_open && out->range_hi_m/out->range_lo_m<=2.0f;
    out->status=LOC_OK;
    return out->status;
}

const char *Loc_StatusText(LocStatus status)
{
    switch(status) {
        case LOC_OK:return "OK";
        case LOC_NOT_INITIALIZED:return "NOT_INITIALIZED";
        case LOC_FRAME_ERROR:return "IFFT_FRAME_ERROR";
        case LOC_TOO_FEW_PAIRS:return "TOO_FEW_VALID_PAIRS";
        case LOC_BAD_GEOMETRY:return "DEGENERATE_PAIR_GEOMETRY";
        case LOC_PHYSICAL_LIMIT:return "LAG_EXCEEDS_ARRAY_SIZE";
        case LOC_ZERO_DELAYS:return "ZERO_TDOA_NO_DIRECTION";
        case LOC_INCONSISTENT:return "INCONSISTENT_TDOA";
        case LOC_AMBIGUOUS_DIRECTION:return "AMBIGUOUS_DIRECTION";
        default:return "UNKNOWN";
    }
}
