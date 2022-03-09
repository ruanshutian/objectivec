//
//  main.c
//  BMICalc
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>

//struct Person{
//    float heightInMeters;
//    int weightInKilos;
//};

typedef struct{
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos/(p.weightInKilos*p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
//    struct Person mikey;
    Person mikey;
    
    mikey.heightInMeters=1.7;
    mikey.weightInKilos=96;
    
//    struct Person aaron;
    Person aaron;
    aaron.heightInMeters=1.97;
    aaron.weightInKilos=84;
    
    printf("mikey is %.2f meters tall\n",mikey.heightInMeters);
    printf("mikey weights %d kilograms\n\n",mikey.weightInKilos);
    
    printf("aaron is %.2f meter tall\n",aaron.heightInMeters);
    printf("aaron weights %d kilograms\n\n",aaron.weightInKilos);
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n",bmi);
    
    bmi=bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n",bmi);
    
    return 0;
}
