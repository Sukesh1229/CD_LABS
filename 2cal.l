%{
#include<stdio.h>
#include "2cal.tab.h"
%}
%%
[0-9]+  {yylval=atoi(yytext);return id;}
[+-/^()*]   {return yytext[0];}
\n {return 0;}
%%
int yywrap(){}