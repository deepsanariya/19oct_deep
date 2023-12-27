//swap without useing third variable
#include<stdio.h>

void main()
{
    int a,b,c;
    printf("Enter the firest value:");
    scanf("%d",&a);
    printf("Enter the second value:");
    scanf("%d",&b);
    printf("Before swapping without useing third variable the value is %d and %d. ",a,b);
    a=a+b;
    b=a-b;
    a=a-b;
    printf("\nAfter the swapping without useing the third variable the value is . ",a,b);
}
