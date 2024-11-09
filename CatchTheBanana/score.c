#include "em_lcd.h"
#include <stdio.h>
#include "score.h"
#include <segmentlcd.h>
#include <segmentlcd_individual.h>

bool app_lcd_symbol_on = true;

volatile SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[SEGMENT_LCD_NUM_OF_LOWER_CHARS];

// Function to update the score on the LCD
void updateScore(uint8_t fallen, uint8_t caught) {
    //char scoreStr[6]; // Buffer for score string

    int scoreNr = fallen*100 + caught;

    // Format the score as "FF:CC" (Fallen:Fallen:Caught:Caught)
    SegmentLCD_Symbol(LCD_SYMBOL_COL10, app_lcd_symbol_on);
    //snprintf(scoreStr, sizeof(scoreStr), "%02u:%02u", fallen, caught);

    // Display the score on the LCD
    //SegmentLCD_Write(scoreStr);
    SegmentLCD_Number(scoreNr);
    SegmentLCD_LowerSegments(lowerCharSegments);
}

int calculate_score(void) {

    uint8_t fallen = 0;    // Fallen bananas
    uint8_t caught = 0;    // Caught bananas

//    while (true) {
//        // Simulate gameplay update
        updateScore(fallen, caught);
        lowerCharSegments[1].d = 1;
//
//        // Logic for PB0/PB1 for scoring updates
//        if (/* fallen condition */) {
//            fallen++;
//        }
//        if (/* caught condition */) {
//            caught++;
//        }
//
//        if (fallen >= 25) {
//            break; // Game over
//        }
//    }

    //SegmentLCD_Write("Done!"); // Display game over
    return 0;
}
