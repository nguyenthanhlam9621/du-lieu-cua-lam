#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int *a, i, n, sum = 0;
 printf ( "\n%s%s”, “An array will be created dynamically. \n\n","Input an array size n followed by integers : " );
 scanf( "%d", &n); 
 a = (int *) calloc (n, sizeof(int) );

 for( i = 0; i < n; i++ )
 {
 printf("Enter %d values : ",n);
 scanf( "%d", a + i );
 }

 for(i = 0; i < n; i++ )
 sum += a[i];
 free(a); 

 printf ( "\n%s%7d\n%s%7d\n\n", "Number of elements: ", n, "Sum ofthe elements: ", sum );
	return 0;
}
