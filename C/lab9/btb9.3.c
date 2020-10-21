#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a;
	printf("nhap so vao:\n");
	scanf("%d",&a);
	kt(a);
	return 0;
}
int kt(int a){
	int i,m=0,bd=0;  
	if(a<2){
		printf("So vua nhap khong la so nguyen to.");
		bd=1;
	} 
	m=a/2;  
	for(i=2;i<=m;i++){  
	if(a%i==0){  
	printf("\nSo vua nhap khong la so nguyen to.");  
	bd=1;
	break;   
		}   
	}  
	if(bd==0)  
	 printf("\nSo vua nhap la so nguyen to.");  
}
