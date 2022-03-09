//
//  main.c
//  ch12Heap
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>
#include<stdlib.h>

typedef struct{
    float heightInMeter;
    int weightInKilos;
}Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos/(p->weightInKilos*p->heightInMeter);
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    float *startOfBuffer;
    //申请1000个float类型的内存
    startOfBuffer =malloc(sizeof(float)*1000);
    
    //释放缓冲区，还给了堆。
    free(startOfBuffer);
    
    startOfBuffer=NULL;
    
    //
    Person *mikey=(Person *)malloc(sizeof(Person));
    mikey->weightInKilos=96;
    mikey->heightInMeter=1.7;
    
    float BMI=bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n",BMI);
    
    free(mikey);
    mikey=NULL;
    
    return 0;
}
