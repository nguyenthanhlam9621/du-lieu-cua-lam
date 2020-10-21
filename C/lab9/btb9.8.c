#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
void ktr(char a[], char l){
	int i,dem=0;
	for(i=0; i<=strlen(a) ;i++){
		if(a[i]==l){
			dem++;
			}
		}
		printf("%d",dem-1);
		
	}
int main(int argc, char *argv[]) {
	char a[30];	char l;
	printf("nhap chuoi:\n");
	gets(a);
	printf("nhap ky tu:\n");
	l=getchar();
	printf("so ky tu '%c'  ke sau ky tu dau:\t",l);
	ktr(a,l);
	return 0;
}


