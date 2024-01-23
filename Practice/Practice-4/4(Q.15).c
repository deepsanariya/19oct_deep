#include<stdio.h>
int main()
{
    int n[5], i, j,temp;
    printf("Enter 5 number : \n");
    for(i=0; i<5; i++){
        scanf("%d",&n[i]);
    }

    for(i=0; i<5-1; i++){
        for(j=0; j<5-i-1; j++){
            if(n[j] > n[j+1]){
                temp = n[j];
                n[j] = n[j+1];
                n[j+1] = temp;
            }
        }
    }

    printf("Ascending Order\n");
    for(i=0; i<5; i++){
        printf("%d\n",n[i]);
    }
    return 0;
}
