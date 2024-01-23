#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a,b,c;
    printf("enter 3 number");
    scanf("%d%d%d",&a,&b,&c);
    if (a>b)
    {
        printf("%d is max",a);
    }
    else if (b>c)
    {
        printf("%d is max",b);
    }
    else
    printf("%d is max",c);


    return 0;
}

