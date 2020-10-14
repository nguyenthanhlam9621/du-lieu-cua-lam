#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int num;
	printf("Nhap so num=");
	scanf("%d",&num);
	printf("Binh phuong cua so do la: %d", num*num);
	getch();
	return 0;
}
