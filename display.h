#ifndef DISPLAY_H_
#define DISPLAY_H_

//Define the values (bits) for the display segments
#define TOPPER 1
#define MIDDLE_1 256
#define MIDDLE_2 4096
#define BOTTOM 8
#define EMPTY 0


void display_catchthebanana(int,int); //Display the game
void display_difficulty();  //Display the difficulty
void display_score(); //Display the score
void display_game_over(); //Display the end screen

#endif /* DISPLAY_H_ */



