#ifndef GLOBAL_VARIABLES_H_
#define GLOBAL_VARIABLES_H_

#include "segmentlcd_individual.h"
#include "display.h"

extern SegmentLCD_LowerCharSegments_TypeDef lower_segment[SEGMENT_LCD_NUM_OF_LOWER_CHARS];  //The array of lower segments
extern volatile int banana[7];  //The array of bananas. Each segment entity can contain a banana on four different segments
extern volatile int bin;  //The location of the bin.
extern volatile int fallen; // Fallen bananas
extern volatile int caught; // Caught bananas
extern volatile int scoreNr; //Score converted into a four digit number
extern volatile int difficulty; //Difficulty of the game
extern volatile int time_tick;  //Time of one tick
extern volatile int start;  //Flag for game start
extern volatile int game_speed[8];  //Game speed calculated based on the difficulty

#endif /* GLOBAL_VARIABLES_H_ */
