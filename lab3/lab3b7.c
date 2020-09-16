#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float a,b,c;
	
	printf("nhap chieu dai can chuyen doi (cm):\n");
	scanf("%f",&a);
	
	printf("\ninch tuong duong:\n %.1f inch",b=a/2.54);
	
	printf("\n Feet tuong duong:\n %.1f feet",c=b/12);
	getch();
	return 0;
}
