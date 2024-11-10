#ifndef SCORE_H
#define SCORE_H

#include <stdint.h>
#include <stdio.h>
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "global_variables.h"
#include "segmentlcd_individual.h"
#include "em_cmu.h"
#include "em_device.h"
#include <time.h>
#include "bin.h"


/***************************************************************************//**
 * Handlers.
 ******************************************************************************/


/***************************************************************************//**
 * Init
 ******************************************************************************/
void app_init(void)
{
    SegmentLCD_Init(false); // Enable LCD without voltage boost
    srand(time(NULL));
}



/***************************************************************************//**
 * App.
 ******************************************************************************/
void app_process_action(void)
{
  //calculate_score();
  //banana[0].a=1;
  int position = rand() % 7;
  display_banana(position);
  display_score();
  display_bin();
  //display_difficulty();

}

#endif // SCORE_H
