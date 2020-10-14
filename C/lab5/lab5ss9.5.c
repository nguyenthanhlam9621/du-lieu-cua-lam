#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int count=1;
	while (count<=10){
		printf("\n This is iteration %d\n",count);
		count++;
	}
	printf("\n The loop is completed.\n");
	return 0;
}
