#include<stdio.h>
int main()
{
    int day,year;
    printf("Enter year:");
    scanf("%d",&year);
    day=year*365;
    printf("day into day %d\n",day);
    year=day/365;
    printf("day to year: %d",year);
}
