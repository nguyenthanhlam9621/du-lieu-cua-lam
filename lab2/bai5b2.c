#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	float top,bottom,height,s;
	
	printf("nhap chieu dai day nho(top):\n");
	scanf("%f",&top);
	printf("nhap chieu dai day lon(bottom):\n");
	scanf("%f",&bottom);
	printf("nhap chieu cao(height):\n");
	scanf("%f",&height);
	printf("Dien tich hinh thang la:\n %f",s=(top+bottom)/2*height);
	
	
	return 0;
}
