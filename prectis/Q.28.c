#include<stdio.h>
int main()
{
    int day,month,year;
    printf("Enter year:");
    scanf("%d",&year);
    day=year*365;
    month=year*12;
    printf("year to day %d\n",day);
    printf("year to month %d",month);
}
