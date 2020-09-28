#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	char *ptr;
 char word[10];
 int i, vowcnt=0;
 printf("\n Enter a word: ");
 scanf("%s",word);
 ptr = &word[0];
 for(i=0;i< strlen(word);i++)
 {
 if((*ptr=='a')||(*ptr=='e')||(*ptr=='i')||(*ptr=='o')||
 (*ptr=='u')|| (*ptr=='A')||(*ptr=='E')||(*ptr=='I')||
 (*ptr=='O')||(*ptr=='U'))
 vowcnt++;
 ptr++;
 }
 printf("\n The word is : %s \n The number of vowels in the word is: %d ", word,vowcnt);
	return 0;
}
