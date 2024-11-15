//Includes
#include "display.h"
#include "em_lcd.h"
#include "segmentlcd_individual.h"
#include "segmentlcd.h"
#include "segmentlcdconfig.h"
#include "global_variables.h"
#include <sl_udelay.h>
#include "stdio.h"
#include "score.h"


void display_score (void) //Displays the score
{

  SegmentLCD_Symbol (LCD_SYMBOL_COL10, 1);  //Display the colon symbol on the upper LCD
  SegmentLCD_Number (scoreNr);  //Display the score on the upper LCD

}

void display_game_over (void) //Displays the game over screen
{
  SegmentLCD_Write ("Done!"); //Display game over message on the lower LCD
}

void display_catchthebanana (int random_position, int bin_position) //Displays the main game
{
  bool banana_fall = false; //Initialise the banana_fall variable with value 'false'
  if (time_tick == game_speed[difficulty])
    {
      banana_fall = true; //Start the falling of the bananas
      time_tick = 0;  //Set the time tick to zero
    }
  else
    {
      banana_fall = false;  //Stop the falling of the bananas
      time_tick++;  //Increment the time tick
    }

  if ((banana[random_position] == EMPTY) & banana_fall) //If no value set for the random element of the banana array. Put a banana on a random position if there is no banana
    {
      banana[random_position] = TOPPER; //Set the random element to the upper value in the banana array. Put a banana in the upper position in the random element
    }
  for (int i = 0; i < 7; i++) //For every segment
    {
      lower_segment[i].raw = banana[i]; //Set the segment according to the value of the current position in the banana array
    }
  lower_segment[bin_position].d = 1;  //Set the segment according to the place of the bin
  SegmentLCD_LowerSegments (lower_segment); //Display the game. Display the bananas and the bin

  if (banana_fall) //If the bananas are falling
    {
      for (int i = 0; i < 7; i++) //For every position of the banana array
        {
          if (banana[i] != EMPTY) //If there is a value on the position
            {
              switch (banana[i])
                {
                case TOPPER:  //If the value of the position is in the upper value. If the banana is  on the upper segment
                  banana[i] = MIDDLE_1; //Set the value of the position on the higher middle value. Place the banana in the upper middle segment
                  break;
                case MIDDLE_1:  //If the value of the position is in the upper value.If the banana is on the upper middle segment
                  banana[i] = MIDDLE_2; //Set the value of the position to the lower middle value. Place the banana in the lower middle segment
                  break;
                case MIDDLE_2:  //If the value of the position is in the upper value.If the banana is on the lower middle segment
                  if (!calculate_score (i)) //If the bin is not on the same segment. If the bin is not below the banana
                    {
                      banana[i] = BOTTOM; //Set the value of the position to the lower value. Place the banana in the lower segment
                    }
                  else
                    {
                      banana[i] = EMPTY;  //Empty the value on position the banana array. The banana was caught
                    }
                  break;
                case BOTTOM:  //If the value of the position is in the lower value.If the banana is on the lower segment
                  banana[i] = EMPTY;  //Empty the value on position the banana array. The banana has fallen
                  break;
                }
            }
        }
    }
}
