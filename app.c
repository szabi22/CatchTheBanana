#include <gamestart.h>
#include <stdint.h>
#include <stdlib.h>
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
#include "em_gpio.h"
#include "em_cmu.h"
#include "gpio.h"
#include "em_timer.h"
#include "gamestart.h"

#define DEBOUNCE_DELAY 50  // 50 ms debounce delay


/***************************************************************************//**
 * Handlers.
 ******************************************************************************/
/*
uint32_t get_system_time_ms(void) {
    return (SysTick->VAL / (CMU_ClockFreqGet(cmuClock_CORE) / 1000));
}
*/
/***************************************************************************//**
 * Init
 ******************************************************************************/
void app_init(void)
{
    SegmentLCD_Init(false); // Enable LCD without voltage boost
    srand(time(NULL));

    //SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000);  // 1 ms tick
    gpio_game_start();
    SegmentLCD_ARing(difficulty,1);
    game_init();
    gpio_game();
}

/***************************************************************************//**
 * App.
 ******************************************************************************/
void app_process_action(void)
{


  //display difficulty
  SegmentLCD_ARing(difficulty,1);


  //SegmentLCD_AllOn();
  updateScore();
  display_score();
  int banana_fall = rand() % 7;


  if(fallen + caught >= 25)
    {
      display_game_over();
    }
  else
    {

      display_catchthebanana(banana_fall,bin);
    }
}
