#include<stdio.h>
int main()
{
    int n[5], i, sum;
    printf("Enter 5 number : \n");
    for(i=0; i<5; i++){
        scanf("%d",&n[i]);
    }

    sum = 0;
    for(i=0; i<5; i++){
        sum = sum +n[i];
    }
    printf("sum = %d", sum);
    return 0;
}
