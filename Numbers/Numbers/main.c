//
//  main.c
//  Numbers
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int x=255;
    printf("x is %d.\n",x);
    printf("x is %o.\n",x);
    printf("x is %x.\n",x);
    
    long lx=255;
    printf("lx is %ld.\n",lx);
    printf("lx is %lo.\n",lx);
    printf("lx is %lx.\n",lx);
    
    unsigned long ux=255;
    printf("ux is %lu.\n",ux);
    printf("ux is %lo.\n",ux);
    printf("ux is %lx.\n",ux);
    
    printf("3*3+5*2=%d\n",3*3+5*2);
    
    printf("11/3=%d\n",11/3);
    
    printf("11/3 = %d reminder of %d \n",11/3,11%3);
    
    printf("11/3.0 = %f\n",11/(float)3);
    
    
    
    return 0;
}
