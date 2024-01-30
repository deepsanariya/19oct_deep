#include<stdio.h>
char str[100],max[100];
int i,wo=1;
char word()
{
    printf("enter string:-");
    gets(str);
    for (i = 0; i < strlen(str); i++)
    {
       wo++;
    }


    printf("%d",wo-1);

}
int main(int argc, char const *argv[])
{
    word();
    return 0;
}

