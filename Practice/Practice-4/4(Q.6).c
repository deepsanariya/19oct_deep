#include<stdio.h>
int i, j, k;
void add(int m1[][3], int m2[][3], int ans[][3], int r, int c){
	for(i=0; i<r; i++){
		for(j=0; j<c; j++){
			ans[i][j] = m1[i][j] + m2[i][j];
		}
	}
}

void sub(int m1[][3], int m2[][3], int ans[][3], int r, int c){
	for(i=0; i<r; i++){
		for(j=0; j<c; j++){
			ans[i][j] = m1[i][j] - m2[i][j];
		}
	}
}

void mult(int m1[][3], int m2[][3], int ans[][3], int r1, int c1, int c2){
	for(i=0; i<r1; i++){
		for(j=0; j<c2; j++){
			ans[i][j] = 0;
			for(k=0; k<c1; k++){
				ans[i][j] += m1[i][k] * m2[k][j];
			}
		}
	}
}

void disp(int m[][3], int r, int c){
	for(i=0; i<r; i++){
		for(j=0; j<c; j++){
			printf("%d\t", m[i][j]);
		}
		printf("\n");
	}
}

int main(){
	int m1[3][3], m2[3][3], ans[3][3], i, j, r=3, c=3;

	printf("Enter value of first matrix : ");
	for(i=0; i<r; i++){
		for(j=0; j<c; j++){
			scanf("%d", &m1[i][j]);
		}
	}

	printf("Enter value of second matrix : ");
	for(i=0; i<r; i++){
		for(j=0; j<c; j++){
			scanf("%d", &m2[i][j]);
		}
	}

	add(m1, m2, ans, r, c);
	printf("\n addition : \n");
	disp(ans, r, c);

	sub(m1,m2, ans, r, c);
	printf("\n subtraction : \n");
	disp(ans, r, c);

	mult(m1, m2, ans, r, c, c);
	printf("\n multiplication : \n");
	disp(ans, r, c);
	return 0;
}
