%{
	#include<stdio.h>
	int valid_int=0,valid_float=0;
%}
%%
A[-+]?[0-9]* {valid_int++;}
A[-+]?[0-9]*[.][0-9]+$ {valid_float++;}
%%
int yywrap(){return 0;}
int main()
{
	printf("Enter a number:");
	yylex();
	if(valid_int!=0)
	{
		printf("Valid integer\n");
	
	}	
	else if(valid_float!=0)
	{
		printf("Valid float number\n");
	}

		
	else
	{
		printf("Not valid integer or float number\n");
	}
		
	return 0;
}