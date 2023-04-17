/* Write a lex program to check whether the given input is a string palindrome or not*/

%{
#include <string.h>
%}

%%

[A-Za-z0-9]+ {
     int len = strlen(yytext);
	 int flag = 0;
        for (int i = 0; i < len/2; i++) {
          if (yytext[i] != yytext[len-i-1]) {
               printf("%s is not a palindrome\n", yytext);
               flag = 1;
            }
        }
		if(!flag)
        printf("%s is a palindrome\n", yytext);

        }

. ;
%%

int yywrap(){
    return 1;
}

int main() {
    yylex();
    return 0;
}