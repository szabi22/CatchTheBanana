#include "segmentlcd.h"
#include "segmentlcd_individual.h"

volatile SegmentLCD_LowerCharSegments_TypeDef lowerCharSegments[7];
volatile int banana[7] = {0};
volatile int bin = 3;
volatile int fallen = 0;
volatile int caught = 0;
volatile int scoreNr = 0000;
