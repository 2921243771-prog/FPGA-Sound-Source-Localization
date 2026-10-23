#include "localize_2d.h"
#include <math.h>
#include <stdio.h>
#define assert(condition) do { if(!(condition)) {fprintf(stderr,"FAIL line %d: %s\n",__LINE__,#condition);return 1;} } while(0)

static const int pi[6]={0,0,0,1,1,2},pj[6]={1,2,3,2,3,3};
static void simulated(float angle_deg,float radius,int quantize,float lag[6])
{
    const float m[4][2]={{-.035f,.035f},{.035f,.035f},{.035f,-.035f},{-.035f,-.035f}};
    float d[4],angle=angle_deg*3.14159265358979323846f/180;
    float x=radius*sinf(angle),y=radius*cosf(angle);
    unsigned i;
    for(i=0;i<4;++i) {
        float dx=x-m[i][0],dy=y-m[i][1];
        d[i]=sqrtf(dx*dx+dy*dy);
    }
    for(i=0;i<6;++i) {
        lag[i]=(d[pi[i]]-d[pj[i]])*44100/343;
        if(quantize) lag[i]=roundf(lag[i]);
    }
}
static float angle_error(float a,float b)
{
    float d=fabsf(a-b);
    return d>180 ? 360-d : d;
}
int main(void)
{
    LocResult out;
    float lag[6]={0};
    int angle;
    setvbuf(stdout,0,_IONBF,0);
    assert(Loc_Estimate(lag,63,0,&out)==LOC_NOT_INITIALIZED);
    assert(!Loc_Init(0,343));
    assert(Loc_Init(44100,343));
    for(angle=-180;angle<180;angle+=10) {
        simulated((float)angle,1.0f,1,lag);
        assert(Loc_Estimate(lag,63,0,&out)==LOC_OK && out.bearing_valid);
        assert(angle_error((float)out.azimuth_deg,(float)angle)<=8);
        assert(!out.range_valid);
    }
    simulated(45,.0707f,0,lag);
    assert(Loc_Estimate(lag,63,0,&out)==LOC_OK);
    printf("Near exact TDOA: azimuth=%d range_valid=%d range=%.4f support=%.4f..%.4f RMS=%.4f\n",
        out.azimuth_deg,out.range_valid,out.range_m,out.range_lo_m,out.range_hi_m,out.rms_samples);
    assert(angle_error((float)out.azimuth_deg,45)<=2);
    assert(fabsf(out.range_m-.0707f)<.015f);
    assert(out.range_lo_m<=.0707f && out.range_hi_m>=.0707f);
    simulated(45,.0707f,1,lag);
    assert(Loc_Estimate(lag,63,0,&out)==LOC_OK);
    printf("Near integer TDOA: azimuth=%d range_valid=%d range=%.4f support=%.4f..%.4f RMS=%.4f\n",
        out.azimuth_deg,out.range_valid,out.range_m,out.range_lo_m,out.range_hi_m,out.rms_samples);
    assert(angle_error((float)out.azimuth_deg,45)<=6);
    assert(!out.range_valid || (out.range_lo_m<=.0707f && out.range_hi_m>=.0707f));
    simulated(90,.035f,1,lag);
    assert(Loc_Estimate(lag,63,0,&out)==LOC_OK);
    printf("Very near integer TDOA: azimuth=%d range_valid=%d range=%.4f support=%.4f..%.4f RMS=%.4f\n",
        out.azimuth_deg,out.range_valid,out.range_m,out.range_lo_m,out.range_hi_m,out.rms_samples);
    assert(out.range_valid && out.range_lo_m<=.035f && out.range_hi_m>=.035f);
    assert(Loc_Estimate(lag,63,1,&out)==LOC_FRAME_ERROR);
    assert(Loc_Estimate(lag,3,0,&out)==LOC_TOO_FEW_PAIRS);
    lag[0]=100;
    assert(Loc_Estimate(lag,63,0,&out)==LOC_PHYSICAL_LIMIT);
    for(angle=0;angle<6;++angle) lag[angle]=0;
    assert(Loc_Estimate(lag,63,0,&out)==LOC_ZERO_DELAYS);
    lag[0]=9;lag[1]=-13;lag[2]=9;lag[3]=-9;lag[4]=13;lag[5]=9;
    assert(Loc_Estimate(lag,63,0,&out)==LOC_INCONSISTENT);
    printf("PASS localization: actual clockwise microphone numbering, 36 integer-TDOA far bearings, unresolved far range, near exact/integer data, invalid flags, geometry and lag bounds\n");
    return 0;
}
