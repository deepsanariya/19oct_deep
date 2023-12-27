#include<stdio.h>
int main(int argc, char const *argv[])
{
    int salary;
    printf("enter monthli salary");
    scanf("%d",&salary);
    salary=salary*(1+0.05/4)*4*3;
    printf("compound interest %d",salary);
}
