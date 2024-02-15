#include<stdio.h>
int main()
{
    int minutes,seconds,hours;
    printf("Enter minute:");
    scanf("%d",&minutes);
    seconds=minutes*60;
    minutes=hours/60;
    printf("second=%d and hours=%d:",seconds,hours);
}
