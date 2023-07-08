#ifndef TETRIS_ONLINE_TETRIS_H
#define TETRIS_ONLINE_TETRIS_H

#define TET_TICKS_START 30

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

enum {
    TET_GAMEOVER = 0,
    TET_PLAYiNG
};

enum {
    TET_PLAYER_NOP = 0,
    TET_PLAYER_UP,
    TET_PLAYER_DOWN,
    TET_PLAYER_LEFT,
    TET_PLAYER_RIGHT
};

typedef struct TetPlayer {
    int action;
} TetPlayer;

typedef struct TetGame{
    TetField* field; // game board
    TetFigure* figure; // figure drop info
    TetFiguresT* figurest; //info about how shapes look others fig
    TetPlayer* player;
    int ticks;
    int ticks_left;
    int playing;
    int score;
} TetGame;

TetFiguresT* createTetFiguresT(int count, int figures_size, TetBlock* figures_template);

void freeTetFigurest(TetFiguresT* tetft);

TetField* createTetField(int width, int height);

void freeTetField(TetField* tetf);

TetGame* createTetGame(int field_width, int field_height, int figure_size,
                       int count, TetBlock* figures_templates);

void freeTetGame(TetGame* tetg);

void moveFigureDown(TetGame* tetg);

void moveFigureUp(TetGame* tetg);

void moveFigureRight(TetGame* tetg);

void moveFigureLeft(TetGame* tetg);

int collisionTet(TetGame* tetg);

void planFigure(TetGame* tetg);

int lineFilledTet(int i, TetField* tfl);

void dropLineTet(int i, TetField* tfl);

int eraseLinesTet(TetGame* tetg);

TetFigure* createTetFigure(TetGame* tetg);

void freeTetFigure(TetFigure* tf);

void dropNewFigure(TetGame* tetg);

TetFigure* rotTetFigure(TetGame* tetg);

void calculateTet(TetGame* tetg);



#endif //TETRIS_ONLINE_TETRIS_H
