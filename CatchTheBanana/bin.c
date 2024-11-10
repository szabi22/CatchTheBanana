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
  bin++;
  lower_segment[bin].d = 1;
  display_bin (lower_segment);
}

void bin_move_left (void)
{
  lower_segment[bin].d = 0;
  bin--;
  lower_segment[bin].d = 1;
  display_bin (lower_segment);
}

//void bin_default (void)
//{
//  x = 3;
//  lower_segment[x].d = 1;
//  display_bin (lower_segment);
//
//}

//void bin_default_test (void)
//{
//  x = 3;
//  lower_segment[x].d = 1;
//  display_bin_test();
//
//}
//
//void display_bin_test(void)
//{
//  SegmentLCD_LowerSegments(lower_segment);
//}
