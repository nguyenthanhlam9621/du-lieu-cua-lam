#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int num=10;
	char ch='A';
	float f=25.3;
	double d=25.3;
	printf("num=%d\n",num);
	printf("ch=%c\n",ch);
	printf("f=%.2f\n",f);
	printf("d=%f\n",d);
	getch();
	return 0;
}
