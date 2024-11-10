
#include "stdint.h"
#include "stdio.h"
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "segmentlcd_individual.h"
#include "bin.h"
#include "global_variables.h"



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
  //calculate_score();
  display_score();
  display_bin();

  //bin_default_test();
  //calculate_score(banana[7], bin, fallen, caught);
  //bin_move_left(lowerCharSegments);

  //display_banana();
  //display_difficulty();

}

