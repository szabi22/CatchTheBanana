#ifndef GPIO_H
#define GPIO_H

#include "em_gpio.h"

#define PB0_PORT gpioPortB
#define PB0_PIN  9
#define PB1_PORT gpioPortB
#define PB1_PIN  10

void gpio_init(void);

#endif // GPIO_H
