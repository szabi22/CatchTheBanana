#include "em_lcd.h"
#include <stdio.h>
#include "score.h"
#include <segmentlcd.h>
#include <segmentlcd_individual.h>
#include "app.c"

int x = 4; //position of the bin on the x coordinate

//Declaration of functions related to bin
void bin_move_right (void){
  x++;
  lowerCharSegments[x].d = 1;
}

void bin_move_left (void){
  x--;
  lowerCharSegments[x].d = 1;
}

