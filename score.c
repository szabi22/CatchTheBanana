//Includes
#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include "global_variables.h"

void updateScore (void)
{
  scoreNr = fallen * 100 + caught;  //Set the score variable to the new value in the right format
  display_score (scoreNr);  //Display the new score
}

int calculate_score (int i)
{

  if (bin != i) //If the bin is not on the position
    {
      fallen++; //The banana has fallen. Increment the number of fallen bananas
      updateScore (); //Update the score
      return 0; //Return flag that the banana has fallen
    }
  if (bin == i) //If the bin is on the position
    {
      caught++; //The banana was caught. Increment the number of caught bananas
      updateScore (); //Update the score
      return 1; //Return flag that the banana was caught
    }
}
