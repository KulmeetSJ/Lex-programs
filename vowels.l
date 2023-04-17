/*Lex cde to count and print vowels and consonants in an i/p */

%{
    int vc;
    int cc;
%}

%%
[AEIOUaeiou]    {vc++;}
[a-zA-z]   {cc++;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    printf("Vowels:%d\n",vc);
	printf("Consonants:%d",cc);
    return 0;
}
	