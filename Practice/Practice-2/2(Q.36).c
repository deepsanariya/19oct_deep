#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a,u,t;
    printf("enter unit");
    scanf("%d",&u);
    if (u<50)
    {
        t=u*.50;
        printf("total amount %d",t);
    }
    else if (u<150)
    {
        t=25+(u-50)*.75;
        printf("total amount %d",t);
    }
    else if (u<250)
    {
        t=100+(u-150)*1.20;
        printf("total amount %d",t);
    }
    else
    {
        t=220+(u-250)*1.50+.2;
        printf("total amount %d",t);
    }



    return 0;
}

