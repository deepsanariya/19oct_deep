#include<stdio.h>
int main()
{
    int days ,month;
    printf("Enter days:");
    scanf("%d",&days);
    month=days/30;
    printf("days into month %d",month);
    return 0;
}
