#include<stdio.h>
int main()
{
    char a=1;
    int i, j;
    for(i=0; i<5; i++)
    {
        for(j=0; j<i; j++)
        {
            printf("%d",a);
            a++;
        }
        printf("\n");
    }
    return 0;
}
