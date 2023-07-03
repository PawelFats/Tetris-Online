#include "../hdr/tetris.h"
#include <stdlib.h>


TetFiguresT* createTetFiguresT(int count, int figures_size, TetBlock* figures_template){
    TetFiguresT * tetft = (TetFiguresT*)malloc(sizeof (TetFiguresT));
    tetft->count = count;
    tetft->size = figures_size;
    tetft->blocks = figures_template;

    return tetft;

}

void freeTetFigurest(TetFiguresT* tetft) {
    if(tetft){
        free(tetft);
    }
}

TetField* createTetField(int width, int height){
    TetField* tetf = (TetField*) malloc(sizeof (TetField));
    tetf->width = width;
    tetf->height = height;
    tetf->blocks = (TetBlock*)malloc(sizeof(TetBlock)*width*height);
    for(int i=0; i<width*height; i++)
        tetf->blocks[i].b = 0;

    return tetf;
}

void freeTetField(TetField* tetf){
    if(tetf){
        if(tetf->blocks){
            free(tetf->blocks);
        free(tetf);
        }
    }
}

TetGame* createTetGame(int field_width, int field_height, int figure_size,
                       int count, TetBlock* figures_templates) {
    TetGame* tetg = (TetGame*) malloc(sizeof (TetGame));
    tetg->field = createTetField(field_width, field_height);
    tetg->figurest = createTetFiguresT(count, figure_size, figures_templates);

    return tetg;
}

void freeTetGame(TetGame* tetg) {
    if(tetg){
        freeTetField(tetg->field);
        freeTetFigurest(tetg->figurest);
        free(tetg);
    }
}

void calculateTet(TetGame* tetg);