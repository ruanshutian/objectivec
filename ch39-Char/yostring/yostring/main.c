//
//  main.c
//  yostring
//
//  Created by Aron Ruan on 2022/3/19.
//

#include <stdio.h>//printf
#include<stdlib.h>//malloc \free
#include<string.h>//strlen

int spaceCount(const char *sentence)
{
    printf("%s \n",sentence);
    unsigned int len=strlen(sentence);
    unsigned int num=0;
    for(int i=0;i<len;i++)
    {
        if(sentence[i]==' ')
        {
            num++;
        }
    }
    printf("%d \n",num);
    printf("%zu \n",len);
    return 1;
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    
    char x=0x21;
//    char x="!";
    
    while (x<=0x7e) {
//    while (x<="~"){
        printf("%x is %c\n",x,x);
        x++;
    }
    
//    char *start = malloc(5);
    
//    *start ='L';
//    *(start+1)='O';
//    *(start+2)='V';
//    *(start+3)='E';
//    *(start+4)='\0';
    
//    start[0]='L';
//    start[1]='O';
//    start[2]='V';
//    start[3]='E';
//    start[4]='\0';
    
//    printf("%s has %zu characters \n",start,strlen(start));
    
//    printf("The third letter is %c \n",*(start+2));
//    printf("The third letter is %c \n",start[2]);
    
//    free(start);
//    start=NULL;
    
//    char*start="LOVE";
    //start[2]='z';
    const char *start="LOVE";
//    start[2]='z';
    printf("%s has %zu characters \n",start,strlen(start));
    
    const char *sentence ="He was not in the cab at the time.";
    
    printf("\%s\ has %d spaces \n",sentence,spaceCount(sentence));
    
    return 0;
}
