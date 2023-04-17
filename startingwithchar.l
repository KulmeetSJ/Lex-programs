/* Write a lex program to accept a string starting with a particular character/vowel/number etc */

%{
#include <stdio.h>
%}

%%

a.*    { printf("String accepted!\n"); }
.      { printf("String rejected!\n"); }

%%

int main()
{
    yylex();
    return 0;
}
