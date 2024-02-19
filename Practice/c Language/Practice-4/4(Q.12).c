#include<stdio.h>
int main(){
        char snm[5][50];
        int i;
        for(i=0; i<5; i++){
            printf("Enter %d student name : ", i+1);
            scanf("%s",&snm[i]);
        }
        for(i=0; i<5; i++){
            printf("\n%d student : %s", i+1, snm[i]);
        }
        return 0;
    }
