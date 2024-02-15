#include<stdio.h>
char str1[100],str2[100];
int i,c=0;
char cam()
{
    printf("enter first string:-");
    gets(str1);
    printf("enter secand string:-");
    gets(str2);
    if (strlen(str1)==strlen(str2))
    {
        for (i = 0;i<=strlen(str2); i++)
        {
            if (str1[i]==str2[i])
            {
                c++;
            }
        }
        if (c==i)
        {
            printf("string is equal");
        }
        else
        {
            printf("string is not equal");
        }

    }
    else
    {
        printf("string is not equal");
    }


}
int main(int argc, char const *argv[])
{
    cam();
    return 0;
}
