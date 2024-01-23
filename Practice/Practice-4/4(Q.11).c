#include<stdio.h>
int rev, temp;
int revNum(int n){
	rev = 0;
	while(n > 0){
		temp = n%10;
		rev = rev * 10 + temp;
		n /= 10;
	}
	return rev;
}
int main(){
	int n[5], i;
	printf("------Enter Reverse Number------\n");
	for(i=0; i<5; i++){
		scanf("%d",&n[i]);
		n[i] = revNum(n[i]);
	}
	printf("\n------Reverse Order------\n");
//	for(i=4; i>=0; i--){
//		printf("%d\n", n[i]);
//	}

	for(i=0; i<5; i++){
		printf("%d\n", n[i]);
	}
	return 0;
}

