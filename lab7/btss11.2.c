#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char vb[50];
	int i=0,bd=0,b=0;
	printf("nhap chuoi ky tu:\n");
	gets(vb);
	
	while(vb[i++] != 0){
		if(vb[i]=='a'|| vb[i]=='A'||vb[i]=='e'||vb[i]=='E'||vb[i]=='i'||vb[i]=='I'||vb[i]=='u'||vb[i]=='U'||vb[i]=='o'||vb[i]=='O')
		bd++;
	
		else
		b++;
		if(vb[i]==' ')
		b--;
	} 

	printf("so nguyen am trong chuoi la:\n %d \n so phu am la: \n %d",bd,b);
	
	return 0;
}
