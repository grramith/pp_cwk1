#include <stdio.h>

// Defining the maze games constant using what was given in the brief
#define Wall '#'
#define Path ' '
#define Start 'S'
#define Exit 'E'

// Defining the max and min of the games boundaries
#define Max_Height 100
#define Min_Height 5
#define Max_Width 100
#define Min_Width 5

// Enum in order to declare the directions of the player's movement (later on in the code WASD wil be introduced)
typedef enum {
    Up,
    Down,
    Left,
    Right
} Direction;

// A single struct that encapsulates the overall general structure of the maze game
typedef struct {
    char grid[Max_Height][Max_Width];
    int height;
    int width;
    int PlayerRow;
    int PlayerCol;
} Maze;

// Function which allows the executable maze file to load
Maze LoadMazeFile(const char *filename);

// Function allowing player movement
void PlayerMovement(Maze *maze, Direction direction);

// Function depicting the map of the maze
void DisplayMap(const Maze *maze);

// Function to identify whether the user has won/completed the maze
int WinCheck(const Maze *maze);

// Main function
int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <maze_file>\n", argv[0]);
        return 1;
    }

    // Load maze from the file using the pre-defined function
    Maze maze = LoadMazeFile(argv[1]);

    // Main game loop
    while (!WinCheck(&maze)) {
        // Display map
        DisplayMap(&maze);

        // Recieve User input (scanf) for movement
        printf("Enter movement (WASD, M to view map): ");
        char input;
        scanf(" %c", &input);

        // In order to move the user function defined- PlayeMovement needs to be used
        // Up - W, Down - S, Right - D, Left - A, we are assinging the terms with keyboard characters
        switch (input) {
            case 'W':
            case 'w':
                PlayerMovement(&maze, Up);
                break;
            case 'A':
            case 'a':
                PlayerMovement(&maze, Left);
                break;
            case 'S':
            case 's':
                PlayerMovement(&maze, Down);
                break;
            case 'D':
            case 'd':
                PlayerMovement(&maze, Right);
                break;
            case 'M':
            case 'm':
                DisplayMap(&maze);
                break;
            default:
                printf("Invalid input. Please use WASD to move or M to view map.\n");
        }
    }

    printf("Congratulations! You have won the game.\n");

    return 0;
}

// Function allowing to load maze from file
Maze LoadMazeFile(const char *filename) {
    // Implementation of loading maze from file
    // Placeholder return
    Maze maze;
    return maze;
}

// Function allowing to move the user
void PlayerMovement(Maze *maze, Direction direction) {
    // Implementation of player movement
}

// Function which displays the map, but also at the same time indicating the present location of the user at that point in time
void DisplayMap(const Maze *maze) {
    // Implementation of displaying map
}

// Function allowing to check if player has won/completed the game
int WinCheck(const Maze *maze) {
    // Implementation win requiremnt check
    return 0; // Placeholder
}