#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int i,y,sl,t;
	char ht[10];
	 
	printf("So nguoi cap nhat thong tin:\n");
	scanf("%d",&sl);
	
	for(i=1;i<=sl;i++){
		
		printf("\nNhap ten nguoi thu %d:\n",i);
		scanf("%s",&ht);
		printf("\nNhap tuoi nguoi thu %d:\n",i);
		scanf("%d",&t);
		printf("%s-%d Tuoi\n",ht,t);
		printf("\nTen se duoc in bang so tuoi\n");
		for(y=1;y<=t;y++)
		printf("\n%d-%s\n",y,ht);
	}
	return 0;
}
