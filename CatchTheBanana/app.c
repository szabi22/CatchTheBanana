/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
#ifndef SCORE_H
#define SCORE_H

#include "stdint.h"
#include "stdio.h"
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "segmentlcd_individual.h"
#include "bin.h"

SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS];
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
  bin_default(lowerCharSegments);
  //calculate_score(banana[7], bin, fallen, caught);
  //bin_move_left(lowerCharSegments);

  //display_banana();
  //display_difficulty();

}


#endif // SCORE_H
