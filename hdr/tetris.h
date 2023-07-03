#ifndef TETRIS_ONLINE_TETRIS_H
#define TETRIS_ONLINE_TETRIS_H

typedef struct TetBlock {
    int b; //is there a block on the field
} TetBlock;

typedef struct TetFigure { //for drop figure
    int x;
    int y;
    int size;
    TetBlock* blocks;//array of blocks our figure
} TetFigure;

typedef struct TetFiguresT { //shape figure
    int count;
    int size; //the lengthof the side of the square area
    TetBlock* blocks;
} TetFiguresT;

typedef struct TetField { //game board
    int width;
    int height;
    TetBlock* blocks;  //array of blocks
} TetField;

typedef struct TetGame{
    TetField* filed; // game board
    TetFigure* figure; // figure drop info
    TetFiguresT* figurest; //info about how shapes look others fig
} TetGame;

TetGame* createTetGame(int field_width, int field_height, int figure_size,
                       int count, TetBlock* figures_templates);

void calculateTet(TetGame* tetg);




#endif //TETRIS_ONLINE_TETRIS_H
