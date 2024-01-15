#include<stdio.h>
int main(int argc, char const *argv[])
{
    int m,year;
    printf("enter mounth:-");
    scanf("%d",&m);\
    if (m<=12)
    {
        if(m==1 ||m==3|| m==5 ||m==7 ||m==8 ||m==10 ||m==12)
        {
            printf("day=31");
        }
        else if (m==2)
        {
            printf("enter year:-");
            scanf("%d",&year);
            if ((year%4)==0)
            {
                printf("day=29");
            }
            else
            {
                printf("day=28");
            }
        }
        else
        {
            printf("day=30");
        }
    }
    else
    {
        printf("enter velid inpute");
    }



    return 0;
}

