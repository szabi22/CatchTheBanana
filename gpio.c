#include "gpio.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "bin.h"
#include "gamestart.h"

void gpio_game_start(void)
{
  // Enable GPIO clock
  CMU_ClockEnable(cmuClock_GPIO, true);

  // Configure PB0 and PB1 as input with pull-up
  GPIO_PinModeSet(PB0_PORT, PB0_PIN, gpioModeInputPull, 1);
  GPIO_PinModeSet(PB1_PORT, PB1_PIN, gpioModeInputPull, 1);

  // Initialize GPIO interrupt dispatcher
  GPIOINT_Init();

  // Register callbacks for PB0 and PB1
  GPIOINT_CallbackRegister(PB0_PIN, diff_set);
  GPIOINT_CallbackRegister(PB1_PIN, game_start);

  // Enable interrupts for the pins
  GPIO_ExtIntConfig(PB0_PORT, PB0_PIN, PB0_PIN, false, true, true);
  GPIO_ExtIntConfig(PB1_PORT, PB1_PIN, PB1_PIN, false, true, true);

  // Enable NVIC interrupts
  NVIC_EnableIRQ(GPIO_EVEN_IRQn);
  NVIC_EnableIRQ(GPIO_ODD_IRQn);
}

void gpio_game(void) {
    // Enable GPIO clock
    CMU_ClockEnable(cmuClock_GPIO, true);

    // Configure PB0 and PB1 as input with pull-up
    GPIO_PinModeSet(PB0_PORT, PB0_PIN, gpioModeInputPull, 1);
    GPIO_PinModeSet(PB1_PORT, PB1_PIN, gpioModeInputPull, 1);

    // Initialize GPIO interrupt dispatcher
    GPIOINT_Init();

    // Register callbacks for PB0 and PB1
    GPIOINT_CallbackRegister(PB0_PIN, bin_move_left);
    GPIOINT_CallbackRegister(PB1_PIN, bin_move_right);

    // Enable interrupts for the pins
    GPIO_ExtIntConfig(PB0_PORT, PB0_PIN, PB0_PIN, false, true, true);
    GPIO_ExtIntConfig(PB1_PORT, PB1_PIN, PB1_PIN, false, true, true);

    // Enable NVIC interrupts
    NVIC_EnableIRQ(GPIO_EVEN_IRQn);
    NVIC_EnableIRQ(GPIO_ODD_IRQn);
}

