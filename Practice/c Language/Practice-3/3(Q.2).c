#include<stdio.h>
int main()
{
    int i,no[5];
    for(i=0;i<5;i++){
        printf("Enter your number");
        scanf("%d", &no[i]);
    }
    for(i=0;i<5;i++){
        printf("%d", &no[i]);
    }
    return 0;
}
