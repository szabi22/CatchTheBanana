
#include "stdint.h"
#include "stdio.h"
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "segmentlcd_individual.h"
#include "bin.h"
#include "global_variables.h"

SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS];

//lowerCharSegments[bin].d=1; //conversion of bin position to display segment type

//for (i=0; i<7;i++)      ////conversion of bananas position to display segment type
//  {
//    switch {
//      case: banana[i]==256;
//      lowerCharSegments[i].b = 1;
//
//
//    }
//
//  }

volatile int banana[7]={};
volatile int bin = 0;
int fallen = 0;
int caught = 0;
int scoreNr = 0000;

void app_init(void)
{
  /* Enable LCD without voltage boost */
    SegmentLCD_Init(false);
    //SegmentLCD_Write("Hello");
}

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
  display_score(scoreNr);
  bin_default(bin);

  bin_default_test();
  //calculate_score(banana[7], bin, fallen, caught);
  //bin_move_left(lowerCharSegments);

  //display_banana();
  //display_difficulty();

}

