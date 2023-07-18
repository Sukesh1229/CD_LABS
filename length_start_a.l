/* lex program to find the length of a string*/
%{
#include<stdio.h>
int length;
int print(int length);
%}
%%
[a-z A-Z 0-9]+ {length=yyleng;print(length);}
%%
int yywrap(){return 0;}


int print(int length)
{
	if(length==3)
		if(yytext[0]=='A' || yytext[0]=='a')
			printf("String of length 3:%s",yytext);
	return 0;
}
int main()
{
	printf("Enter the string:");
	yylex();
	return 0;
}