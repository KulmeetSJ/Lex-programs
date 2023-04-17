%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[0-9]+ {
    int num = atoi(yytext);
    int square = num * num;
    int last_digit = num % 10;
    int last_digit_of_square = square % 10;
    if (last_digit == last_digit_of_square) {
        printf("%d is an automorphic number.\n", num);
    }
    else {
        printf("%d is not an automorphic number.\n", num);
    }
}

%%

int yywrap()
{
return 1;
}

int main() {
    yylex();
    return 0;
}
