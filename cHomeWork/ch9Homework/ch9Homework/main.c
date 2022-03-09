//
//  main.c
//  ch9Homework
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    //ch9_homework_1
    float a=5.2;
    printf("float is %zu bytes\n",sizeof(a));
    
    //ch9_homework_2
    short s1=1;
    printf("short is %zu bytes\n",sizeof(s1));
    short s_min=-1024*2*2*2*2*2;
    short s_max=1024*2*2*2*2*2-1;
    printf("s_min = %d \n",s_min);
    printf("s_max = %d \n",s_max);
    
    unsigned short uns=1;
    printf("unsigned short is %zu bytes\n",sizeof(uns));
    unsigned short uns_min=0;
    unsigned short uns_max=1024*2*2*2*2*2*2-1;
    printf("uns_min = %d \n",uns_min);
    printf("uns_max = %d \n",uns_max);
    
    return 0;
}
