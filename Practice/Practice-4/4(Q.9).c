#include<stdio.h>
struct demo{
	int x;
	float y;
};

union demo1{
	int num;
	float num1;
}un1;

int main(){

	struct demo d1;
	d1.x = 5;
	d1.y = 10.5;
	printf("\nstructure x and y : %d  %.2f", d1.x, d1.y);

	un1.num = 5;
	un1.num1 = 10.4;
	printf("\nno of intiger : %d",un1.num);
	printf("\nno of float : %.2f",un1.num1);
	return 0;
}
