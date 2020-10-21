#include <stdio.h>
#include <stdlib.h>
#include <math.h>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int kt(int n){
	int i;
	if(n<2){return 0;}
   for(i=2;i<=sqrt(n);i++){
   		if(n%i==0)
      return 0;
	  }
   return 1;
}


int main(int argc, char *argv[]) {
	int i,a[100],n;
	printf("nhap bao nhieu so (ko qua 100 so):\n");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf("nhap so thu %d:",i+1);
		scanf("%d",&a[i]);
	} 
	printf("cac so nguyen to la :\n");
	for(i =0;i<n;i++){
   		if(kt(a[i])){	
		printf("so thu %d:%d\t",i+1,a[i]);   
      
		}
	}


	return 0;
}

