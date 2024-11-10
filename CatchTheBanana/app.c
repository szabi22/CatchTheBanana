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
#include "sl_simple_button_btn0_config.h"
#include "sl_simple_button_btn1_config.h"
#include "sl_simple_button_config.h"

/***************************************************************************//**
 * Handlers.
 ******************************************************************************/
//---------------------------------------------------in progress
/*
void GPIO_ODD_IRQHandler(void) {
    if (GPIO_IntGet() & (1 << SL_SIMPLE_BUTTON_BTN0_PIN)) {
        GPIO_IntClear(1 << SL_SIMPLE_BUTTON_BTN0_PIN);
        if(bin>0){bin--;}
    }
}
*/
//--------------------------------------------------------------
/***************************************************************************//**
 * Init
 ******************************************************************************/
void app_init(void)
{
    SegmentLCD_Init(false); // Enable LCD without voltage boost
    srand(time(NULL));
}
//---------------------------------------------in progress
/*
sl_simple_button_context_t btn0_context =
    {
        .state = 0,
        .history = 0,
        .port = SL_SIMPLE_BUTTON_BTN0_PORT,
        .pin = SL_SIMPLE_BUTTON_BTN0_PIN,
        .mode = SL_SIMPLE_BUTTON_MODE_INTERRUPT,
    };

const sl_button_t sl_button_btn0 =
    {
        .context=&btn0_context,
        .init = sl_simple_button_init,
        .get_state=sl_simple_button_get_state,
        .poll=sl_simple_button_poll_step,
    };

void init_button_interrupts() {
  sl_simple_button_init(&sl_button_btn0);
  NVIC_EnableIRQ(GPIO_ODD_IRQn);
}
*/
//--------------------------------------------------------------
/***************************************************************************//**
 * App.
 ******************************************************************************/
void app_process_action(void)
{
  //calculate_score();
  //banana[0].a=1;
  int banana_fall = rand() % 7;
  display_catchthebanana(banana_fall,bin);
  display_score();
  //display_bin();
  //display_difficulty();

}

#endif // SCORE_H
