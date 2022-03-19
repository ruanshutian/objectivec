//
//  main.c
//  Affirmation
//
//  Created by Aron Ruan on 2022/3/19.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    if(argc !=3)
    {
        fprintf(stderr, " three ");
        return 1;
    }
    
    for(int i=0;i<argc;i++)
    {
        printf("argn %d = %s \n",i,argv[i]);
    }
    
    return 0;
}
