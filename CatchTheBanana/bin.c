#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"



int x = 4; //position of the bin on the x coordinate

//Declaration of functions related to bin

void bin_move_right (SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS])
{
  x++;
  lowerCharSegments[x].d = 1;
  display_bin (lowerCharSegments);
}

void bin_move_left (SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS])
{
  x--;
  lowerCharSegments[x].d = 1;
  display_bin (lowerCharSegments);
}

void bin_default (SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS])
{
  x = 3;
  lowerCharSegments[x].d = 1;
  display_bin (lowerCharSegments);

}

void display_bin (SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS])
{
  SegmentLCD_LowerSegments(lowerCharSegments);
}


