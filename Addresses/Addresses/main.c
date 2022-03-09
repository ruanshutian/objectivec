//
//  main.c
//  Addresses
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int i=17;
    printf("i stores its value at %p\n",&i);
    printf("this function starts at %p\n",main);
    
    int *addressOfI=&i;
    printf("i stores its value at %p\n",addressOfI);
    
    printf("the int stored at adressOfI i %d\n",*addressOfI);
    
    *addressOfI=89;
    printf("Now i is %d\n",i);
    
    printf("An int is %zu bytes \n",sizeof(int));
    printf("A pointer is %zu bytes\n",sizeof(int *));
    
    printf("An int is %zu bytes \n",sizeof(i));
    printf("A pointer is %zu bytes\n",sizeof(addressOfI));
    
    return 0;
}
