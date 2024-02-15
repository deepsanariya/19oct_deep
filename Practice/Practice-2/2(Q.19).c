
#include<stdio.h>
int main(int argc, char const *argv[])
{
    int p,id;
    float u;
    char name[20];
    printf("enter customer name:-");
    scanf("%s",&name);
    printf("enter customer id:-");
    scanf("%d",&id);
    printf("enter unit:-");
    scanf("%f",&u);
    printf("customer name %s & id %d\n",name,id);
    if (u<350)
    {

        printf("%f ",u*1.20);
    }
    else if (u>=350 && u<=600)
    {
        u=u*1.50;
        printf("%f ",u);
    }
    else if (u>=600&&u<=800)
    {
        u=u*1.80;
        printf("%f ",u);
    }
    else
    {
        u=u*2.0;
        printf("%f ",u);
    }
    return 0;
}
