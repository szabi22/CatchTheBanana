#ifndef GLOBAL_VARIABLES_H
#define GLOBAL_VARIABLES_H

#include "segmentlcd.h"
#include "segmentlcd_individual.h"

// Declare the variable as external
extern volatile SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[7];
extern volatile int banana[7];
extern volatile int bin;
extern volatile int fallen;
extern volatile int caught;
extern volatile int scoreNr;

#endif // GLOBAL_VARIABLES_H
