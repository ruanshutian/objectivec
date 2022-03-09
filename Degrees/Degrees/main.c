//
//  main.c
//  Degrees
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>
#include<stdlib.h>

float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature=cel;
    
    float fahr=cel*1.8+32.0;
    
    printf("%f Celsius is %f Fahrenheit\n",cel,fahr);
    
    return fahr;
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    float freezeInC=0;
    float frerzeInF=fahrenheitFromCelsius(freezeInC);
    printf("Water freezed at %f degrees fahrenheit\n",frerzeInF);
    
    printf("The last temperature converted was %f \n",lastTemperature);
    
//    return 0;
    return EXIT_SUCCESS;
}
