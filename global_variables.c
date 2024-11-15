//Includes
#include "global_variables.h"
#include "segmentlcd_individual.h"
#include "display.h"
#include <stdbool.h>

//Initialise all of the variables with default values

SegmentLCD_LowerCharSegments_TypeDef lower_segment[SEGMENT_LCD_NUM_OF_LOWER_CHARS]={EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY};
volatile int banana[7]={EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY,EMPTY};
volatile int bin=3;
volatile int fallen = 0;
volatile int caught = 0;
volatile int scoreNr = 0000;
volatile int difficulty=0;
volatile int time_tick=0;
volatile int start=0;
volatile int game_speed[8]={50,45,40,35,20,25,20,15};



