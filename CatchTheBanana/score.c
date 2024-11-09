#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"



void updateScore(int fallen, int caught)
{
    //char scoreStr[6]; // Buffer for score string

    int scoreNr = fallen*100 + caught;
    display_score(scoreNr);
}

void calculate_score(int banana[7], int bin, int fallen, int caught)
{

    for (int i=0; i<7; i++)
      {

        if (banana[i] == 4 && bin != i)
          {
            fallen++;
          }
        if (banana[i] == 4 && bin == i)
          {
            caught++;
          }

        if (fallen + caught >= 25)
          {
            break; // Game over
          }
      }
    updateScore(fallen, caught);
    display_game_over();
}
