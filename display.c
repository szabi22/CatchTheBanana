#include "display.h"
#include "em_lcd.h"
#include "segmentlcd_individual.h"
#include "segmentlcd.h"
#include "segmentlcdconfig.h"
#include "global_variables.h"
#include <sl_udelay.h>
#include "stdio.h"
#include "score.h"
#include <stdbool.h>


bool app_lcd_symbol_on = true;

void display_score (void)
{

  SegmentLCD_Symbol(LCD_SYMBOL_COL10, app_lcd_symbol_on);
  SegmentLCD_Number(scoreNr);

}

void display_game_over (void)
{
  SegmentLCD_Write("Done!");
}

//void display_catchthebanana(int bin_position) {
//    SegmentLCD_LowerSegments(lower_segment);  // Ensure lower segment updates
//    lower_segment[bin_position].d = 1;        // Light up the bin position
//    SegmentLCD_LowerSegments(lower_segment);  // Update the display
//}


void display_catchthebanana(int random_position, int bin_position)
{
  bool banana_fall = false;
  if(time_tick==game_speed[difficulty]){banana_fall=true; time_tick=0;}
  else {banana_fall=false; time_tick++;}

  if((banana[random_position]==EMPTY) & banana_fall){banana[random_position]=TOPPER;}
  for(int i=0;i<7;i++)
    {
      lower_segment[i].raw=banana[i];
    }
  lower_segment[bin_position].d=1;
  SegmentLCD_LowerSegments(lower_segment);

  if(banana_fall)
    {
      for(int i=0; i<7;i++)
        {
          if(banana[i]!=EMPTY)
            {
              switch (banana[i])
              {
                case TOPPER: banana[i]=MIDDLE_1; break;
                case MIDDLE_1: banana[i]=MIDDLE_2; break;
                case MIDDLE_2: if(!calculate_score(i))
                  {
                    banana[i]=BOTTOM;
                  }
                else
                  {
                    banana[i]=EMPTY;
                  }
                break;
                case BOTTOM: banana[i]=EMPTY;break;
              }
            }
        }
    }
}
/*
void display_bin (void)
{
  SegmentLCD_LowerSegments(lower_segment);  // Ensure lower segment updates
  lower_segment[bin].d = 1;        // Light up the bin position
  SegmentLCD_LowerSegments(lower_segment);
}

*/
