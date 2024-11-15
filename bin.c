#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include "global_variables.h"


//Declaration of functions related to bin

void bin_move_right (void)
{
  lower_segment[bin].d = 0;
  if(bin<6)bin++;
  lower_segment[bin].d = 1;

  //SegmentLCD_LowerSegments(lower_segment);
}

void bin_move_left (void)
{
  lower_segment[bin].d = 0;
  if(bin>0)bin--;
  lower_segment[bin].d = 1;

  //SegmentLCD_LowerSegments(lower_segment);
}
