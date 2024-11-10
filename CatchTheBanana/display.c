#include "display.h"
#include "em_lcd.h"
#include "segmentlcd_individual.h"
#include "segmentlcd.h"
#include "segmentlcdconfig.h"
#include "global_variables.h"
#include <sl_udelay.h>
#include "stdio.h"
#include "score.h"

//-----------------
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

void display_bin (void)
{
  lower_segment[bin].d=1; //conversion of bin position to display segment type
  SegmentLCD_LowerSegments(lower_segment);
}
//-----------------

void display_banana(int position)
{
  if(banana[position]==EMPTY){banana[position]=TOPPER;}
  for(int i=0;i<7;i++)
    {
      lower_segment[i].raw=banana[i];
    }
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


