#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a=0,b;
    printf("enter number");
    scanf("%d",&a);
    for (int i = 0; i <= a; i++)
    {
        b=b+i;
    }
    printf("%d",b);
    return 0;
}
