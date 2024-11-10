#include "global_variables.h"
#include "segmentlcd_individual.h"
#include "display.h"

SegmentLCD_LowerCharSegments_TypeDef lower_segment[SEGMENT_LCD_NUM_OF_LOWER_CHARS]={EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY};
volatile int banana[7]={EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY};
volatile int bin=3;
volatile int fallen = 0;    // Fallen bananas
volatile int caught = 0;    // Caught bananas
volatile int scoreNr = 0000;
volatile int difficulty=10;


