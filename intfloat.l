/* Design a Lex code to identify and print integer and float value in given input pattern  */

%{
#include<stdio.h>
%}

%%
[0-9]+ printf("\nInteger");
[0-9]+[.][0-9]+ printf("\nFloat");
[ ] printf(" ");
.  printf("\nNeither Integer Nor Float");
%%

int yywrap()		
{
return 1;
}

int main()
{
yylex();
return 0;
}


