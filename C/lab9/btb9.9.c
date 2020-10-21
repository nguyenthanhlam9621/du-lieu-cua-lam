#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,diem[20],n;
	printf("nhap so mon(ko qua 20):\n");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf("diem mon thu %d:",i+1);
		scanf("%d",&diem[i]);
	}
xh(diem,n);
	return 0;
}
int xh(int diem[],int n){
	int i;
	float tb,sum=0;
	for(i=0;i<n;i++){
		sum+= diem[i];
	}
	tb=sum/n;
	printf("Diem trung binh la:%.2f",tb);
	if(tb<5){
		printf("\nHoc sinh:Yeu");
	}
	if(tb>=5 && tb<=7){
		printf("\nHoc sinh: Kha");
	}
	if(tb>7 && tb<10){
		printf("\nhoc sinh:Gioi");
	}
	
	
}

