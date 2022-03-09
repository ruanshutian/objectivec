//
//  main.c
//  PBR
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters ,unsigned int *ftPtr,double *inPtr)
{
    double rawFeet = meters*3.281;
    
//    unsigned int feet = (unsigned int)floor(rawFeet);
    
    //homework floor----用modf函数代替
    
    double f;
    double rawFeetTemp;
    rawFeetTemp=modf(rawFeet, &f);
    unsigned int feet = (unsigned int)f;
    
    //避免对NULL取值
    if(ftPtr)
    {
        printf("Storing %u to the address %p \n",feet,ftPtr);
        *ftPtr=feet;
    }
    
    
    double fractionalFoot=rawFeet-feet;
    double inches = fractionalFoot*12.0;
    
    //避免对NULL取值
    if(inPtr)
    {
        printf("Storing %.2f to the adress %p \n",inches,inPtr);
        *inPtr=inches;
    }
    
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    double pi=3.14;
    double integerPart;
    double fractionPart;
    
    //modf 将整数存入地址，将小数作为返回结果-----引用传递：调用函数时传入某个地址（引用），然后由函数将数据存入该地址指向的内存
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.0f , fractonPart = %.2f \n",integerPart,fractionPart);
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and equal to %1f inches.\n",meters,feet,inches);
    
    
    return 0;
}
