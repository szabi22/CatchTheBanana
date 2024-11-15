#ifndef GLOBAL_VARIABLES_H_
#define GLOBAL_VARIABLES_H_

#include "segmentlcd_individual.h"
#include "display.h"

extern SegmentLCD_LowerCharSegments_TypeDef lower_segment[SEGMENT_LCD_NUM_OF_LOWER_CHARS];
extern volatile int banana[7];
extern volatile int bin;
extern volatile int fallen;    // Fallen bananas
extern volatile int caught;    // Caught bananas
extern volatile int scoreNr;
extern volatile int difficulty;
extern volatile int time_tick;
extern volatile int start;
extern volatile int game_speed[8];

#endif /* GLOBAL_VARIABLES_H_ */
