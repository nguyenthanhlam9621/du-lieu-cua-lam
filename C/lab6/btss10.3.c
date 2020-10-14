#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,a,kq;
	printf("Bang cuu chuong cua so:\n");
	scanf("%d",&a);
	for(i=1;i<=10;i++){
		kq=i*a;
		printf("%d X %d = %d\n",a,i,kq);
	}
	return 0;
}
