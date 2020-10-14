#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
int var = 500, *ptr_var;
 
 ptr_var = &var; 
 printf("The value %d is stored at address %u:",var,&var);
 
 printf("\nThe value %u is stored at address: %u", ptr_var, &ptr_var);
 
 printf("\nThe value %d is stored at address:%u", *ptr_var, ptr_var);
	return 0;
}
