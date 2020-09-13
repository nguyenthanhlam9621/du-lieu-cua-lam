#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int num1;
	int num2;
	
	printf("num1=");
	scanf("%d",&num1);
	printf("num2=");
	scanf("%d",&num2);
	
	printf("Tong= %d\n",num1+num2);
	printf("Hieu=%d\n",num1-num2);
	printf("Tich=%d\n",num1*num2);
	printf("Thuong=%d\n",num1/num2);
	
	return 0;
}
