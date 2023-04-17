/*Lex code to count words of length 5 in a given i/p */

%{
#include <string.h>
int count = 0;
%}

%%
[a-zA-Z]+     { if (strlen(yytext) == 5) count++; }
.             ;
%%

int yywrap(){
    return 1;
}

int main() {
    yylex();
    printf("Number of words of length 5: %d\n", count);
    return 0;
}