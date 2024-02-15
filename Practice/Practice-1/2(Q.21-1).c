//swap using third variable
#include<stdio.h>

void main()
{
    int a,b,c;
    printf("Enter the first value:");
    scanf("%d",&a);
    printf("Enter the second value:");
    scanf("%d",&b);
    printf("Before swapping useing third variable the value is %d and %d. ",a,b);
    c=a;
    a=b;
    b=c;
    printf("\nAfter the swapping useing the third variable the value is %d and %d. ,a,b");
}
