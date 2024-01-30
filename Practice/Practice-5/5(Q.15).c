#include<stdio.h>
#include<string.h>

int a,i,m=0,n=0,ma,s;
char str[100],str1[100];
int en()
{
    printf("enter string:-");
    gets(str);
}
int max()
{
    for (i = 0; i < strlen(str); i++)
    {
        if (str[i]!=32)
        {
            m++;
        }
        else
        {
            n=m;
            if(n>ma)
            {
                ma=n;
            }
            if(s>n)
            {
                s=n;
            }
            m=0;
        }

    }
    printf("%d",ma);
    printf("\n%d",n);

}
int main()
{
    en();
    max();
    return 0;
}
