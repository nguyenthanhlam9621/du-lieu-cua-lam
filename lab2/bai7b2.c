#include <stdio.h>
#include <stdlib.h>
#include <math.h>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float a,b,c,pi=3.14;
	
	printf("nhap ban kinh hinh tron:\n");
	scanf("%f",&a);
	printf("dien tich hinh tron la:\n %.2f", b= pow(a,2)*pi);
	printf("\nchu vi hinh tron la:\n %.2f",c=2*a*pi);
	
	float d,e,f,g;
	printf("\nnhap chieu dai 2 canh hinh chu nhat hoac hinh vuong:\n");
	scanf("%f %f", &d,&e);
	printf("chu vi cua hinh la:\n %.2f",f=2*(d+e));
	printf("\ndien tich cua hinh la:\n%.2f",g=d*e);
	
	return 0;
}
