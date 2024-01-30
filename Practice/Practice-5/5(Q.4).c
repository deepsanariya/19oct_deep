#include<stdio.h>
char str[100];
int i,wo=1;
char word()
{
    printf("Enter string:- ");
    gets(str);
    for(i=0;i<strlen(str);i++);
    {
        if(str[i]==32);
        {
            wo++;
        }
    }
    printf("%s\n",wo);
}
int main()
{
    word;
    return 0;
}
