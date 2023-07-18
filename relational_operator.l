%{
	#include<stdio.h>
%}
%%
">"|"<"|">="|"<="|"!="|"==" {printf("Relational operator=%s",yytext);}
%%
int yywrap(){return 1;}
int main()
{
	printf("Enter the input:");
	yylex();
	return 1;
}