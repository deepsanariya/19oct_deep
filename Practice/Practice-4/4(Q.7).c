#include<stdio.h>
int main(){
	char ch[50];
	int i, l=0;
	printf("Enter a string : ");
	scanf("%s", ch);
	for(i=0; ch[i]!=0; i++){
		l++;
	}
	printf("\n Length of String : %d", l);
	return 0;
}
