#include<stdio.h>
int main(int argc, char const *argv[])
{
    int b,s,a;
    printf("ener bay value");
    scanf("%d",&b);
    printf("enter sell value");
    scanf("%d",&s);
    a=s-b;
    if (s>b)
    {
        printf("%d profit",a);
    }
    else
    {
        printf("%d loss",a);
    }
}

