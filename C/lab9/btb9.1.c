#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
void dn(float a[]){
	float y[5];
	int i;
	for(i=5;i>0;i--){
		y[5-i]=a[i-1];	
	}
	for(i=0;i<5;i++){
		a[i]=y[i];
	}
	}
int main(int argc, char *argv[]) {
	int i;
	float a[5];
	for(i=0;i<5;i++){
		printf("nhap so:\n");
		scanf("%f",&a[i]);
	}
	dn(a);
	for(i=0;i<5;i++){
		printf("%.2f\n",a[i]);
	}
	return 0;
}

	
 
