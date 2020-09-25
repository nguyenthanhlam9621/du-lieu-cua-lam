#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,num1,num2,sum=0;
	printf("nhap num1:\n");
	scanf("%d",&num1);
	printf("nhap num2:\n");
	scanf("%d",&num2);
	
	if(num1<num2){
		for(i=num1;i<=num2;i++){
			if(i%2!=0){
				sum+=i;
			}
		}
	}
	 if(num1>num2){
		for(i=num2;i<=num1;i++){
			if(i%2!=0){
				sum+=i;
			}
		}
	}printf("tong cac so le giua 2 so la: %d",sum);
	return 0;
}
