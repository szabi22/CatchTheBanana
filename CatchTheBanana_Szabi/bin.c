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
  lowerCharSegments[bin].d = 0;
  bin++;
  lowerCharSegments[bin].d = 1;
  display_bin (lowerCharSegments);
}

void bin_move_left (void)
{
  lowerCharSegments[bin].d = 0;
  bin--;
  lowerCharSegments[bin].d = 1;
  display_bin (lowerCharSegments);
}

//void bin_default (void)
//{
//  x = 3;
//  lowerCharSegments[x].d = 1;
//  display_bin (lowerCharSegments);
//
//}

//void bin_default_test (void)
//{
//  x = 3;
//  lowerCharSegments[x].d = 1;
//  display_bin_test();
//
//}
//
//void display_bin_test(void)
//{
//  SegmentLCD_LowerSegments(lowerCharSegments);
//}


