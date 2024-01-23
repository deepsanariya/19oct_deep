
#include<stdio.h>
int main(int argc, char const *argv[])
{
    int m,p,c;
    printf("enter maths mark");
    scanf("%d",&m);
    printf("etner phy mark");
    scanf("%d",&p);
    printf("etner chem mark");
    scanf("%d",&c);

    if(m>=65 && p>=65 && c>=50 && (m+p+c)>=190 && (m+p)>=140)
    printf("The candidate is eligible");
    else
        printf("The candidate is not eligible");
    return 0;
}

