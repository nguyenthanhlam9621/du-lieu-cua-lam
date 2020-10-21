#include <stdio.h>
#include <stdlib.h>
#include <math.h>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int dttg(int a,int b,int c){
	int p,s;
	p=(a+b+c)/2;
	s=sqrt(p*(p-a)*(p-b)*(p-c));
	return s;
	
}
int main(int argc, char *argv[]) {
	int a,b,c;
	printf ("chieu dai canh a:");
	scanf("%d",&a);
	printf ("chieu dai canh b:");
	scanf("%d",&b);
	printf ("chieu dai canh c:");
	scanf("%d",&c);
	if (a >= b + c || b >= a + c || c >= a + b){
		printf("3 canh nay khong phai tam giac");
	}
	else{
		printf("dien tich cua tam giac nay la:%d",dttg(a,b,c));
	}
	return 0;
}
