#include<stdio.h>
struct employee{
	int empno, age;
	char empnm[50], add[100];
}emp;

void empInfo(){
	printf("Enter employee no : ");
	scanf("%d", &emp.empno);

	printf("\nEnter employee name : ");
	scanf("%s", &emp.empnm);

	printf("\nEnter employee address : ");
	scanf("%s", &emp.add);

	printf("\nEnter employee age : ");
	scanf("%d", &emp.age);
}

void dispInfo(){
	printf("\nEmployee number : %d", emp.empno);
	printf("\nEmployee name : %s", emp.empnm);
	printf("\nEmployee address : %s", emp.add);
	printf("\nEmployee age : %d", emp.age);
}
int main(){
	struct employee emp;
	empInfo();
	dispInfo();
	return 0;
}

