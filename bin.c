#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include "global_variables.h"

//Declaration of functions related to bin
void bin_move_right (void)  //Move the bin to the right
{
  lower_segment[bin].d = 0; //Turn off the previous segment
  if (bin < 6)  //If the bin is in the boundaries of the screen
    bin++;  //Shift the bin to the right
  lower_segment[bin].d = 1; //Turn on the current segment

}

void bin_move_left (void) //Move the bin to the left
{
  lower_segment[bin].d = 0; //Turn off the previous segment
  if (bin > 0)  //If the bin is in the boundaries of the screen
    bin--;  //Shift the bin to the left
  lower_segment[bin].d = 1; //Turn on the current segment

}
