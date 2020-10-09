#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int tong(int a,int b){
	int sum;
	sum=a+b;
	return sum;
}
int tru(int a, int b){
	int hieu;
	hieu= a-b;
	return hieu;
}
int nhan(int a, int b){
	int tich;
	tich=a*b;
	return tich;
}
int chia(int a, int b){
	int th;
	th =a/b;
	return th;
}
int main(int argc, char *argv[]) {
	int i,y,a,b;
	printf("\n1. Input Number");
	printf("\n2. Calculate Sum");
	printf("\n3. Calculate Substraction");
	printf("\n4. Calculate Multiplication");
	printf("\n5. Calculate Division");
	printf("\n6. Exit\n");
	scanf("\n%d",&y);
	
	if(y==1){
		
		printf("nhap 2 so A,B:\n");
		scanf("%d %d",&a,&b);
		printf("\n2. Calculate Sum");
		printf("\n3. Calculate Substraction");
		printf("\n4. Calculate Multiplication");
		printf("\n5. Calculate Division");
		printf("\n6. Exit\n");
		scanf("\n%d",&i);
		
		if(i==2){
			printf("A + B= %d",tong(a,b));
		}
		if(i==3){
			printf("A - B= %d",tru(a,b));
		}
		if(i==4){
			printf("A x B= %d",nhan(a,b));
		}
		if(i==5){
			printf("A : B= %d",chia(a,b));
		}
		if(i==6){
			printf("tat");
		exit;
		}
	}
	return 0;
}
