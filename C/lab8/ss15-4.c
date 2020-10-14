#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	register int i;
	int no,digit,sum;
	printf("\nThe numbers whose Sum of Cubes of Digits is Equal to the number itself are:\n\n");
	for(i=1;i<999;i++){
		sum=0;
		no=i;
		while(no){
			digit=no%10;
			no=no/10;
			sum=sum+ digit*digit*digit;
		}
		if(sum==i)
		printf("\t%d\n",i);
	
	}return 0;}


