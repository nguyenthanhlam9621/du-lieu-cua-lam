#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,sl,a[100],min,max;
	
	printf("Nhap so luong so can so sanh(khong qua 100 so):\n");
	scanf("%d",&sl);
	
	for(i=0; i<sl ;i++){
		
		printf("so thu %d:\t",i+1);
		scanf("%d",&a[i]);
}

	min=a[0],max=a[0];

		
	for(i=1;i<sl;i++){
		
		if(a[i]<min){
			min=a[i];
		}
	}
		
	for(i=1;i<sl;i++){
		
		if(a[i]>max){
			max=a[i];
		}
	}

	
	printf("so lon nhat: %d \nso nho nhat: %d",max,min);
	
	return 0;
}
