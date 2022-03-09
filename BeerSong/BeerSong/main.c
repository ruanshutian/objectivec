//
//  main.c
//  BeerSong
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if(numberOfBottles==0)
    {
        printf("There are simply no more bottles of beer on the wall.\n");
    }
    else
    {
        printf("%d bottles of beer on the wall.%d bottles of beer.\n",numberOfBottles,numberOfBottles);
        int oneFewer=numberOfBottles-1;
        printf("Take one down ,pass it around,%d bottles of beer on the wall.\n",oneFewer);
        singTheSong(oneFewer);
        
        printf("Put a bottles int the recucling,%d empty bottles of beer in the bin.\n",numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    singTheSong(4);
    
    
    return 0;
}
