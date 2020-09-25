#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,num1=0,num2=1,sum;
	 for(i=1;i<20;i++){
		 sum=num1+num2;
	 	printf("%d,",sum);
	 	num1=num2;
	 	num2=sum;	
	 }
	
	return 0;
}



//0 1 1
//1 1 2
//1 2 3
//2 3 5
//3 5 8

