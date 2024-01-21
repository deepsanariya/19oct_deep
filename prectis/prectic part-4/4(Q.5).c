#include<stdio.h>

int main()
{
	int a[100],n,i,j,temp,tmp,ch;

	printf("Array of size:");
	scanf("%d",&n);
	printf("\nEnter a number:");
	for(i=0; i<n; i++){
		scanf("%d", &a[i]);
	}

	printf("\n1. Accending:");
	printf("\n2. Descending:");
	printf("\nEnter user choise:");
	scanf("%d",&ch);

	switch(ch){
		case 1:
			for(i=0; i<n; i++){
				for(j=0; j<n; j++){
					if(a[j] > a[i]){
					temp = a[i];
					a[i] = a[j];
					a[j] = temp;
					}
				}
			}
			printf("\nAccending Order:");
			for(i=0; i<n; i++){
				printf(" %d ", a[i]);
			}
			break;

		case 2:
			for(i=0; i<n; i++){
				for(j=0; j<n; j++){
					if(a[j] < a[i]){
						tmp =a[i];
						a[i] = a[j];
						a[j] = tmp;
					}
				}
			}
			printf("\nDescending Order:");
			for(i=0; i<n; i++){
				printf(" %d ", a[i]);
			}
			break;

		default :
			printf("\nInvalid choice.");
	}
	return 0;
}

