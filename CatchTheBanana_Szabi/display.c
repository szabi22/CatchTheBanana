#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"
#include "global_variables.h"

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
  lowerCharSegments[bin].d=1; //conversion of bin position to display segment type
  SegmentLCD_LowerSegments(lowerCharSegments);
}

