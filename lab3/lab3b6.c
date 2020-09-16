#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
int s,m=3,n=5,r,t;
float x=3.0,y;

t = n/m;
printf("\n%d",t);

r = n%m;
printf("\n%d",r);

y = n/m;
printf("\n%f",y);

t = x*y-m/2;
printf("\n%d",t);

x = x*2.0;
printf("\n%f",x);

s = (m+n)/r;
printf("\n%d",s);

y = --n;
printf("\n%f",y);
	return 0;
}
