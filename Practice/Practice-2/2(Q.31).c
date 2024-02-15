#include<stdio.h>
int main(int argc, char const *argv[])
{
    int bs;
    printf("enter basic salary:-");
    scanf("%d",&bs);
    if (bs<=10000)
    {
        bs=bs+.20+.80;
        printf("salary=%d",bs);
    }
    else if (bs<=20000)
    {
        bs=bs+.25+.90;
        printf("salary=%d",bs);
    }
    else
    {
        bs=bs+.35+.95;
        printf("salary=%d",bs);
    }

    return 0;
}

