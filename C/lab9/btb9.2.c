#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int vtmin(int a[]){
	int vtmin=0,i,min=a[0];
	for (i=0;i<10;i++){
		if(min>a[i]){
			min=a[i];
			vtmin=i+1;
		}
		} 
		return (vtmin);
	}
	int min(int a[]){
	int min=a[0],i;
	for (i=0;i<10;i++){
		if(min>a[i]){
		min=a[i];
		}
		} 
		return (min);
	}

int main(int argc, char *argv[]) {
	int i,a[10];
	printf("nhap cac so nguyen:\n");
	for(i=0;i<10;i++){
		printf("do thu %d:",i+1);
		scanf("%d",&a[i]);
	}

	printf("so be nhat la: %d \nso be nhat dau tien o vi thi thu %d",min(a),vtmin(a));

	return 0;
}


