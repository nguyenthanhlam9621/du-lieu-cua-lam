#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a[1000];
	ch7(a);
	
	return 0;
} 
int ch7(int b[]){
	int a[200],i,sum=0;	
	
	for( i=0; i<=200 ;i++){
		a[i]=300+i;
	}
	for( i=0; i<=200 ;i++){
		if((a[i]%7)==0){	
		printf("\ncac so chia het cho 7 la:%d,",a[i]);
		sum+=a[i];
		printf("\tsum=%d",sum);}
	}	
	
}
