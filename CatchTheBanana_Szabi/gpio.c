#include "em_gpio.h"
#include "em_cmu.h"
#include "gpio.h"

void gpio_init(void) {
    CMU_ClockEnable(cmuClock_GPIO, true);

    GPIO_PinModeSet(PB0_PORT, PB0_PIN, gpioModeInputPull, 1);
    GPIO_PinModeSet(PB1_PORT, PB1_PIN, gpioModeInputPull, 1);
}
