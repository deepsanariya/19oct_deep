#include<stdio.h>
int onum, rnum, temp;
int palindrome(int n){
	onum = n;
	rnum = 0;

	while(n > 0){
		temp = n%10;
		rnum = rnum * 10 + temp;
		n /= 10;
	}
	return onum == rnum;
}

int main(){
	int n1;

	printf("Enter a number : ");
	scanf("%d",&n1);

	if(palindrome(n1)){
		printf("no is palindrome");
	}
	else{
		printf("no is not palindrome");
	}

	return 0;
}

