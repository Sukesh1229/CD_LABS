%{
	#include<stdio.h>
	int m;
%}
%%
	[0-9]+ {m=a to i(yytext);
	if(m%2==0)
		printf("Even");
	else
		printf("Odd");
	}
	.*{printf("Not even nor odd")};
%%
main()
{
	printf("Enter number:")'
	yylex();
}
