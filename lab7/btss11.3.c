#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,m[5];
	
	for(i=0;i<5;i++){
		printf("nhap so thu %d:\n",i+1);
		scanf("%d",&m[i]);
	}
	for(i-=1;i>=0;i--){
	printf("%d\t",m[i]);
}
	return 0;
}
