//
//  main.c
//  homeWork_4
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int i=20;
    int j=25;
    
    int k=(i>j)?10:5;
    
    //k=5
    
    if(5<j-k){
        printf("The first expression is true.");
        
        //this is true.
        
    }else if(j>i){
        printf("The second expression is true");
    }else{
        printf("Neither expression i true");
    }
    
    
    return 0;
}
