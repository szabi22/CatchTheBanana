#include "gamestart.h"
#include "global_variables.h"
#include "segmentlcd_individual.h"

void diff_set(void)
{
  if(difficulty==7)
    {
      difficulty=0;
      for(int i=0; i<8 ;i++)
        {
          SegmentLCD_ARing(i,0);
        }
    }
  else  {difficulty++;}
  SegmentLCD_ARing(difficulty,1);
}

void game_start(void)
{
  start=1;
}


void game_init(void)
{
  while(!start);
}

