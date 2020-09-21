#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,j,k;
	i=0;
	printf("Enter no.of rows:");
	scanf("%d",&i);
	printf("\n");
	
	for(j=0;j<i;j++){
		printf("\n");
			for(k=0;k<=j;k++)
			printf("*");
} 
	for (k=j;k>=0;k--){
	printf("\n");
		for (j=k-1;j>=0;j--)
		printf("-");
}

	return 0;
}
