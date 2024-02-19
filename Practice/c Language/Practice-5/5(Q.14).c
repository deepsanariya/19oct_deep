#include<stdio.h>
int main(int argc, char const *argv[])
{
    char str[100],str1[100];
    printf("enter first string:-");
    gets(str);
    printf("enter secand string:-");
    gets(str1);
    for (int i = 0; i < strlen(str) ; i++)
    {
        printf("%c",str[i]);
    }
    printf(" ");
    for (int i = 0; i < strlen(str1); i++)
    {
        printf("%c",str1[i]);
    }


    return 0;
}

