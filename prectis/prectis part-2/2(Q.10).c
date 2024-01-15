#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a;
    printf("enter number");
    scanf("%d",&a);
    if(a>0)
    {
        printf("number is Positive");
    }
    else if (a>=0)
    {
        printf("number is zero");
    }

    else
    {
        printf("number is negativ");
    }
    return 0;
}

