#ifndef GPIO_H
#define GPIO_H

#include "em_gpio.h"

// Define the pins and ports for PB0 and PB1
#define PB0_PORT gpioPortF
#define PB0_PIN  6
#define PB1_PORT gpioPortF
#define PB1_PIN  7

void gpio_init(void);

#endif // GPIO_H
