//
//  main.c
//  TurkeyTimer
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds)
{
    int necessaryMinutes = 15+15*pounds;
    printf("Cook for %d minutes.\n",necessaryMinutes);
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    int totalWieght=10;
    int gibletsWeight=1;
    int turkeyWeigth=totalWieght-gibletsWeight;
    showCookTimeForTurkey(turkeyWeigth);
    
    return 0;
}
