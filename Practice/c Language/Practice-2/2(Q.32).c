#include<stdio.h>
int main(int argc, char const *argv[])
{
    int w;
    printf("enter week number");
    scanf("%d",&w);
    w*=7;
    printf("week day %d",w);
    return 0;
}

