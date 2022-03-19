//
//  main.c
//  ch42-switch
//
//  Created by Aron Ruan on 2022/3/19.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int yeastType =1;
    switch(yeastType)
    {
        case 1:
            printf("this is 1\n");
            break;
        case 2:
            printf("this is 2\n");
            break;
        case 3:
            printf("this is 3\n");
            break;
        default:
            printf("this is default\n");
            break;
    }
    
    return 0;
}
