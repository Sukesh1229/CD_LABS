%{
#include<stdio.h>
int m;
%}
  
%%
  
[0-9]+  {m=atoi(yytext);
          if(m%2==0) 
               printf("Even");
          else
		printf("Odd");
	}
	.* {printf("Enter an integer value");}
%%
   
int yywrap(){}
int main()
{
    printf("Enter a number:");
    yylex();
    return 0;
}