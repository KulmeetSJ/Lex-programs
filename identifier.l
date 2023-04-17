/* Design a lex code to identify and print valid identifier of c/c++ in given Input Pattern */

%{
#include<stdio.h>
%}

%%
[a-zA-Z][0-9a-zA-Z]* {printf("Identifier\n");}   
[ ]|\n ;
. {printf("Not identifier");}
%%

/*
%%
[\t ]+ ;
[0-9]+|[0-9]*\.[0-9]+ { printf("\n%s is NUMBER", yytext);}
#.* { printf("\n%s is COMMENT", yytext);}
[a-zA-Z][a-zA-Z0-9]+ { printf("\n%s is IDENTIFIER", yytext);}
\"[^ \"\n]*\" { printf("\n%s is STRING", yytext);}
\n { ECHO;}
%%
*/
int yywrap()					
{
return 1;
}


int main()
{

yylex();						
return 0;
}


