//
//  main.c
//  Classcertificates
//
//  Created by Aron Ruan on 2022/3/8.
//

#include <stdio.h>

#include <unistd.h>

void congratulateStudent(char *student,char *course,int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days.\n",student,course,numDays);
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
//    printf("Kate has done as much Cocoa Programing as I could fit into 5 days\n");
//
//    printf("Bo has done as much Objective-C Programming as I could fit info 2 days\n");
//
//    printf("Mike has done as much Python Programming as I could fit into 5 days \n");
//
//    printf("Liz has done as much ios Programming as Icould fit into 5 days\n");
    
    congratulateStudent("Kate","Cocoa",5);
    sleep(2);
    
    congratulateStudent("Bo","Objective-C",5);
    sleep(2);
    
    congratulateStudent("Mike","Pyhton",5);
    sleep(2);
    
    congratulateStudent("Liz","ios",5);
    sleep(2);
    
    return 0;
}
