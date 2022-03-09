//
//  main.c
//  ch11Homework
//
//  Created by Aron Ruan on 2022/3/9.
//

#include <stdio.h>
#include<time.h>

struct tim{
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
    long tm_gmtoff;
    char *tm_zone;
};

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    long secondSince1970 = time(NULL);
    struct tm now;
    localtime_r(&secondSince1970, &now);
    printf("%.2d-%.2d-%.4d\n",now.tm_mon,now.tm_mday,now.tm_year+1900);
    
    //400万秒后的时间
    secondSince1970=secondSince1970+400*10000;
    localtime_r(&secondSince1970, &now);
    
    printf("%.2d-%.2d-%.4d\n",now.tm_mon,now.tm_mday,now.tm_year+1900);
    
    return 0;
}
