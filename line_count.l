/*Lex code to count no. of lines , tabs and spaces of the input
*/
%{
#include<stdio.h>
int lc=0;
int tc=0;
int sc=0;
int ch=0;
int wc=0;
%}

%%
[\n] lc++;
[\t] tc++;
[ ] sc++;
[A-Za-z0-9]* {wc++ ;ch+=yyleng;}

%%
int yywrap()
{
return 1;
}

int main()
{
yylex();

printf("\nNo. of lines= %d",lc);
printf("\nNo. of tabs= %d",tc);
printf("\nNo. of spaces= %d",sc);
printf("\nNo. of words= %d",wc);
printf("\nNo. of characters= %d",ch);


}



/* How to run in linux
lex [filename].l
gcc lex.yy.c -ll
./a.out
Ctrl+D to end input in linux

*/


/* How to run in windows using flex
flex hello.l
gcc lex.yy.c
a.exe
Ctrl+Z to end input
Then press enter
*/

/* Running yacc programs
flex hello.l
bison -dy hello.y
gcc lex.yy.c y.tab.c
a.exe
*/