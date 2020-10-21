#include <stdio.h>
#include <stdlib.h>


/* run this program using the console pauser or add your own getch, system("pause") or input loop */
char doi(char *chuoi){
	int i;
	for(i=0;i<=30;i++){
		if(*(chuoi+i)<='z' && *(chuoi+i)>='a'){
			*(chuoi+i)-=32;
		}
	}
	printf("%s",chuoi);
}
int main(int argc, char *argv[]) {
	char chuoi[30],i;
	printf("nhap chuoi:\n");
	gets(chuoi);
	// a=97,A=65
	doi(chuoi);
	return 0;
}

