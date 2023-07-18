%{
	#include<stdio.h>
%}
%%
"Hi" {printf("Bye");}
.*  {printf("Wrong");}
%%
int yywrap(){return 1;}
void main()
{
	printf("Enter an input:");
	yylex();
}
