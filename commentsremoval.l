/* Lex program to take a c program as input with comments in it , then  remove the comments from the program and then print the output */

%{
#include<stdio.h>
%}

%%

\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
%%
/*

int main()
{
yyin=fopen("mypgm.c","r");
yyout = fopen("output1.txt","w");
yylex();
}

*/

int main(int argv,char *argc[])
{
yyin=fopen(argc[1],"r");

yylex();

return 0;
}

int yywrap()
{
return 1;
}
