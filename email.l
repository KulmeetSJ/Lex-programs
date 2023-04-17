/* Write a lex program to Check for valid email id entered */

%{
#include<stdio.h>
int flag = 0;
%} 
%%
[A-Za-z0-9]+@[A-Za-z]+".com" {flag=1;} 
%%

int main()
{
yylex();
if (flag == 1)
printf("Accepted");
else
printf("Not Accepted");
}
int yywrap()
{
return 1;
}