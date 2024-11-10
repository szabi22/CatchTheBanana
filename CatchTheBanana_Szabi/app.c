
#include "stdint.h"
#include "stdio.h"
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "segmentlcd_individual.h"
#include "bin.h"
#include "global_variables.h"
#include "gpio.h"



void app_init(void)
{
  /* Enable LCD without voltage boost */
    SegmentLCD_Init(false);
    gpio_init();  // Initialize GPIO for buttons
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

  if (GPIO_PinInGet(PB0_PORT, PB0_PIN) == 0) {
          SegmentLCD_Write("PB0");
      }

      if (GPIO_PinInGet(PB1_PORT, PB1_PIN) == 0) {
          SegmentLCD_Write("PB1");
      }

  // Check if PB0 is pressed
      if (GPIO_PinInGet(PB0_PORT, PB0_PIN) == 0) {
          bin_move_left();
      }

      // Check if PB1 is pressed
      if (GPIO_PinInGet(PB1_PORT, PB1_PIN) == 0) {
          bin_move_right();
      }

  //bin_default_test();
  //calculate_score(banana[7], bin, fallen, caught);
  //bin_move_left(lowerCharSegments);

  //display_banana();
  //display_difficulty();

}

