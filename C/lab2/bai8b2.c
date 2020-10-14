#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	printf("/*=====================kich thuoc cac kieu du lieu============================*/");
	printf("\n\nkieu int:%d Byte",sizeof(int));
	printf("\nso nguyen:21");
	printf("\n\nkieu float:%d Byte",sizeof(float));
	printf("\nso thuc kieu float: 0.123456");
	printf("\n\nkieu double:%d Byte",sizeof(double));
	printf("\nso thuc kieu double: 0.1234567891");
	printf("\n\nkieu char:%d Byte",sizeof(char));
	printf("\nky tu: L");
	printf("\n\nkieu long int:%d Byte",sizeof(long int));
	printf("\n\nkieu long double:%d Byte",sizeof(long double));
	printf("\n\n/*===========================================================================*/");
	printf("\n\nBam mot phim de dong chuong trinh!");
	getch();
	return 0;
}
