%{
#include<stdio.h>
%}
%token id '*' '+' '^' '/' '-' '(' ')'
%left '+' '-'
%left '*' '/'
%left '^'
%left '(' ')'
%%
E : E '+' E     {printf("+");}
  | E '-' E     {printf("-");}
  | E '*' E     {printf("*");}
  | E '/' E     {printf("/");}
  | E '^' E     {printf("^");}
  | '(' E ')'   {printf("%d",$2);}
  | id          {printf("%d",$1);}
%%
int main(){
    printf("enter input :");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}