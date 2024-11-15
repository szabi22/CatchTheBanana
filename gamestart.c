//Includes
#include "gamestart.h"
#include "global_variables.h"
#include "segmentlcd_individual.h"

void diff_set (void)
{
  if (difficulty == 7)  //If difficulty is over the maximum limit
    {
      difficulty = 0; //Set the difficulty to the default value
      for (int i = 0; i < 8; i++)
        {
          SegmentLCD_ARing (i, 0);  //Turn off the difficulty indicator
        }
    }
  else  //If within the difficulty limit
    {
      difficulty++; //Increment the difficulty
    }
  SegmentLCD_ARing (difficulty, 1); //Turn on the difficulty indicator on the current value
}
void game_start (void)
{
  start = 1;  //Set the game starting flag to 1
}

void game_init (void)
{
  while (!start); //Stay on the starting screen until the flag is set to 1
}

