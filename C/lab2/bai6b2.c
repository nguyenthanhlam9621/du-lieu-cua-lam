#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float a,b,c,d;
	
	printf("nhap diem mon toan,ly,hoa:\n");
	scanf("%f %f %f",&a,&b,&c);
	printf("\ntong diem 3 mon:\n %.2f", d=(a+b+c));
	printf("\ntrung binh ba mon:\n %.2f ",d=d/3);
	
	return 0;
}
