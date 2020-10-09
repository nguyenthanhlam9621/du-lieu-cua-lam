#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,a[10];
	for(i=0;i<10;i++){
		printf("nhap so thu %d:\n ",i+1);
		scanf("%d",&a[i]);
	}
	for(i=9;i>=0;i--){	
		printf("\n%d",a[i]);
	}
	
	return 0;
}
