//
//  main.c
//  ch38
//
//  Created by Aron Ruan on 2022/3/19.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    // hexdump myfile.txt  查看某个文件的字节数据
    
    //位。或
    unsigned char a =0x3c;
    unsigned char b =0xa9;
    unsigned char c =a|b;
    
    printf("  %x | %x = %x \n",a,b,c);
    printf(" %d | %d = %d \n",a,b,c);
    
    //与
    unsigned char d= a&b;
    
    printf("  %x & %x = %x \n",a,b,d);
    printf(" %d & %d = %d \n",a,b,d);
    
    //异或
    unsigned char e =a^b;
    printf("  %x ^ %x = %x \n",a,b,e);
    printf(" %d ^ %d = %d \n",a,b,e);
    
    //补数
    unsigned char f =~b;
    printf("  %x =~ %x  \n",f,b);
    printf(" %d =~ %d  \n",f,b);
    
    //左位移
    unsigned char g=a<<2;
    
    //右位移
    unsigned char h = a>>2;
    
    
    
    return 0;
}
