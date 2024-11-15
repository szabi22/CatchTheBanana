#ifndef GPIO_H
#define GPIO_H

#include "em_gpio.h"

//Define the pins for the push buttons
#define PB0_PORT gpioPortB
#define PB0_PIN  9
#define PB1_PORT gpioPortB
#define PB1_PIN  10

void gpio_game (void); //Set the GPIO configuration for the main game
void  gpio_game_start (void); //Set the GPIO configuration for the start of the game

#endif // GPIO_H
