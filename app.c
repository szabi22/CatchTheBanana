//Includes
#include <gamestart.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "segmentlcd.h"
#include "score.h"
#include "display.h"
#include "global_variables.h"
#include "segmentlcd_individual.h"
#include "em_cmu.h"
#include "em_device.h"
#include <time.h>
#include "bin.h"
#include "em_gpio.h"
#include "em_cmu.h"
#include "gpio.h"
#include "em_timer.h"
#include "gamestart.h"

//---------------------------------------------------

//Initialisation of the program
void app_init (void)
{
  SegmentLCD_Init (false); //Enable LCD without voltage boost
  srand (time (NULL)); //Initialise random number generator
  gpio_game_start (); //Enter the starting screen
  SegmentLCD_ARing (difficulty, 1); //Display the default difficulty on the starting screen
  SegmentLCD_Write ("Start!"); //Display message on the starting screen
  game_init (); //Stay on the starting screen of the game until the game is started by the user
  gpio_game (); //Enter the game
}

//---------------------------------------------------

//The main program
void app_process_action (void)
{

  SegmentLCD_ARing (difficulty, 1); //Display the current difficulty

  updateScore (); //Update and display the score

  //display_score ();
  int banana_fall = rand () % 7; //Generate randomly the bananas that will fall

  if (fallen + caught >= 25) //The game finishes when we reach the maximum amount of catchable bananas
    {
      display_game_over (); //Display the game over screen
    }
  else //The game continues if we have not reach the maximum number of catchable bananas
    {
      display_catchthebanana (banana_fall, bin); //Display the main screen of the game
    }
}
