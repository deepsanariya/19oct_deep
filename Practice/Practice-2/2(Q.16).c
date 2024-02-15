#include<stdio.h>
int main(int argc, char const *argv[])
{
    int a;
    printf("entner temperature");
    scanf("%d",&a);
    if(a<0)
    {
        printf("Freezing weather");
    }

    else if (a<10)
    {
        printf("Very Cold weather");
    }
    else if (a<20)
    {
        printf("Cold weather");
    }
    else if (a<30)
    {
        printf("Normal in Temp");
    }
    else if (a<40)
    {
        printf("Its Hot");
    }
    else
    {
        printf("Its Very Hot");
    }



    return 0;
}

