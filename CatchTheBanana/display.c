#include "em_lcd.h"
#include "stdio.h"
#include "score.h"
#include "segmentlcd.h"
#include "segmentlcd_individual.h"

bool app_lcd_symbol_on = true;

void display_score (int scoreNr)
{
  SegmentLCD_Symbol(LCD_SYMBOL_COL10, app_lcd_symbol_on);
  SegmentLCD_Number(scoreNr);

}

void display_game_over (void)
{
  SegmentLCD_Write("Done!");
}

//void display_bin (SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS])
//{
//  SegmentLCD_LowerSegments(lowerCharSegments);
//}
