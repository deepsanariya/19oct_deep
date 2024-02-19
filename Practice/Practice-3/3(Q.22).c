#include<stdio.h>
int main()
{
    int no,p,a,no1;
    printf("enere number");
    scanf("%d",&no);
    no1=no;
    while (no !=0)
    {
        a=no%10;
        p=p*10+a;
        no/=10;
    }
    if (no1==p)
    {
        printf("%d is palindrome",no1);
    }
    else
    {
        printf("%d is not palindrome",no1);
    }

}
