#include <stdio.h>
#include <stdlib.h>

#include "../hdr/main.h"

TetBlock tet_templates[] = {
        0,0,1,0,0,
        0,0,1,0,0,
        0,0,1,0,0,
        0,0,1,0,0,
        0,0,1,0,0,

        0,0,0,0,0,
        0,0,1,0,0,
        0,1,1,1,0,
        0,0,0,0,0,
        0,0,0,0,0,

        0,0,0,0,0,
        0,0,1,1,0,
        0,0,1,0,0,
        0,0,1,0,0,
        0,0,0,0,0,

        0,0,0,0,0,
        0,1,1,0,0,
        0,0,1,0,0,
        0,0,1,0,0,
        0,0,1,0,0,

        0,0,0,0,0,
        0,0,1,1,0,
        0,1,1,0,0,
        0,0,0,0,0,
        0,0,0,0,0,

        0,0,0,0,0,
        0,1,1,0,0,
        0,0,1,1,0,
        0,0,0,0,0,
        0,0,0,0,0,

        0,0,0,0,0,
        0,1,1,0,0,
        0,1,1,0,0,
        0,0,0,0,0,
        0,0,0,0,0,
        };

void printTetGame(TetGame* tetg) {
    TetField* tf = tetg->field;
    TetFigure* t = tetg->figure;
    for(int i=0; i<tf->height; i++)
    {
        for(int j=0; j<tf->width; j++)
        {
            int sym = 0;
            if(tf->blocks[i*tf->width+j].b != 0)
            {
                sym = 1;
            }
            else
            {
                int x = fx - t->x;
                int y = fy - t->y;
                if(x >= 0 && x < t->size && y >= 0 && y < t->size)
                {
                    if(t->blocks[y*t->size+x].b != 0)
                        sym = 1;
                }
                printf("%d", sym);
            }
        }
    }
    fflush(stdout);
}

int main(int argc, char* argv[]) {
    TetGame* tetg = createTetGame(50, 37, 5,
    7, tet_templates);
    TetPlayer player;
    player.action = TET_PLAYER_NOP;
    tetg->player = &player;

    while(tetg->playing != TET_GAMEOVER)
    {
        calculateTet(tetg);
        printTetGame(tetg);
    }

    printf("Hello, World!\n");
    return 0;
}
