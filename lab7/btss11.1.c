#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char ten[7][10],ss[10];
	int a,b,t;
	
	for(a=0;a<7;a++){
		printf("nhap ten (duoi 10 ky tu):\n");
		scanf("%s",&ten[a]);
		
	}
	for(a=0;a<7;a++){
		for(b=0;b<7;b++){
			if(strcmp(ten[a],ten[b])<0)
			{
				strcpy(ss,ten[a]);
				strcpy(ten[a],ten[b]);
				strcpy(ten[b],ss);
			}
		}
	}
	for(a=0;a<7;a++){
		printf("%s\t",ten[a]);
	}
	return 0;
}
