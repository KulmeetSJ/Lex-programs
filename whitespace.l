/*Design a LEX code to replace multiple white spaces of 'Input.txt' file by a single blank character into 'Output.txt' file

%{
#include<stdio.h>
%}

%%
[ ]+ {printf(" ");}
[\t]+ {printf(" ");}
[\n] {printf("\n");}
. ; 
%%

int yywrap()
{
return 1;
}

int main()
{
yyin = fopen("input.txt","r");
yyout = fopen("output.txt","w");

yylex();
return 0;
}