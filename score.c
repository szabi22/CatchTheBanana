#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include "global_variables.h"



void updateScore (void)
{
    scoreNr = fallen*100 + caught;
    display_score(scoreNr);
}

int calculate_score (int i)
{

  if (bin != i)
  {
      fallen++;
      updateScore();
      return 0;
  }
  if (bin == i)
  {
     caught++;
     updateScore();
     return 1;
  }
}
