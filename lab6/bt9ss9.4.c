#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,a,b;
	for(i=1;i<=5;i++){
		printf("\n");
		for(a=1;a<=i;a++)
		printf("%d",a);
	}	
	printf("\nXXXXXX");
	for(i=5;i>=1;i--){
		printf("\n");
		for(a=1;a<=i;a++)
		printf("%d",a);
	}
	return 0;
}
