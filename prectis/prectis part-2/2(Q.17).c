#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a,b,c;
    printf("enter value of triangel side");
    scanf("%d%d%d",&a,&b,&c);
    if (a+b<=c||a+c<=b||b+c<=a)
    {
        printf("this is triangel");
    }
    else
    {
        printf("this is not triangel");
    }

    return 0;
}

