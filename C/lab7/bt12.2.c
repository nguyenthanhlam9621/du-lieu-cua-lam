#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char vb[100];
	int i,j,na=0,pa=0,dc=0;
	 printf("nhap van ban:\n");
	 gets(vb);
	 
	 j=strlen(vb);
	 for(i=0;i<j;i++){
	 	switch(vb[i]){
	 		case 'a':
	 		case 'A':
	 		case 'i':
	 		case 'I':
	 		case 'e':
	 		case 'E':
	 		case 'u':
	 		case 'U':
	 		case 'o':
	 		case 'O':
	 			na++;
	 			break;
		 
		case ' ':{		
		dc++;
		break;}
		default:{	
		pa++;
		break;}
	 }}
	 printf("\nso nguyen am:%d",na);
	 printf("\nso phu am:%d",pa);
	
	
	return 0;
}
