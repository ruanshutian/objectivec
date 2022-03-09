//
//  main.c
//  CountDown
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>
#include<stdlib.h>
#include<readline/readline.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int i;
    for(i=99;i>=0;i--)
    {
        if(i%3!=0){
            continue;
        }
        printf("%d\n",i);
        if(i%5==0){
            printf("Found one\n");
        }
    }
    
//    printf("Who is cool?\n");
//
//    const char *name=readline(NULL);
//
//    printf("%s is cool!\n\n",name);
    
    int num=atoi("23");
    printf("%d\n",num);
    
    return 0;
}
