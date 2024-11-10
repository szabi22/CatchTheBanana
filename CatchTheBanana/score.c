#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include "global_variables.h"



void updateScore (void)
{
    int scoreNr = fallen*100 + caught;
    display_score(scoreNr);
}

void calculate_score (void)
{

    for (int i=0; i<7; i++)
      {

        if (banana[i] == 8 && bin != i)
          {
            fallen++;
            updateScore();
          }
        if (banana[i] == 8 && bin == i)
          {
            caught++;
            updateScore();
          }

        if (fallen + caught >= 25)
          {
            break; // Game over
          }
      }
    updateScore();
    display_game_over();
}
