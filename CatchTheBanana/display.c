#include "display.h"
#include "em_lcd.h"
#include "segmentlcd_individual.h"
#include "segmentlcd.h"
#include "segmentlcdconfig.h"
#include "global_variables.h"
#include <sl_udelay.h>
#include "stdio.h"
#include "score.h"


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

void display_catchthebanana(int random_position, int bin_position)
{
  if(banana[random_position]==EMPTY){banana[random_position]=TOPPER;}
  for(int i=0;i<7;i++)
    {
      lower_segment[i].raw=banana[i];
    }
  lower_segment[bin_position].d=1;
  SegmentLCD_LowerSegments(lower_segment);
  sl_udelay_wait(100000*difficulty);
  for(int i=0; i<7;i++)
    {
      if(banana[i]!=EMPTY)
        {
          switch (banana[i]){
            case TOPPER: banana[i]=MIDDLE_1; break;
            case MIDDLE_1: banana[i]=MIDDLE_2; break;
            case MIDDLE_2: banana[i]=BOTTOM; break;
            case BOTTOM: banana[i]=EMPTY; break;
          }
        }
    }
}


