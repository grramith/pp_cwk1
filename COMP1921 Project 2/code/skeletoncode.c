#include <stdio.h>

const int maxRows = 100;
const int maxCols = 100;
int cols;
int rows;
char direction;
char maze[maxRows][maxCols];
char filename[1000];
int completed = 0;

// define function to read in maze from txt file
void readMaze (char maze[maxRows][maxCols], int *rows, int *cols, char filename) {
    // opens file, scans through maze, stores maze in "maze" array.
}

// define function to print maze upon a user trigger
void printMaze (char maze[maxRows][maxCols], int rows, int cols) {
    // loops through "maze" array, prints row, adds \n character, repeats.
}

// define function to move the character through the maze
void moveCharacter (char maze[maxRows][maxCols], int *rows, int *cols, char direction) {
    // takes user input, checks if new position is valid e.g. isnt a # character or a boundary, stores new position in rows and cols variable
}



int main() {

    // introduce game, welcome user, explain controls

    // call readMaze function

    // following all in a while loop with binary completion condition, "completed"

    // call printMaze function

    // simulate maze view request to show user initial position in maze

    // ask for user input

    // call moveCharacter function

    // if user position pointer = "E", set completed = 1

    //congratulate user and exit program

    return 0;
}
