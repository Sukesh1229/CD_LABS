%{
#include<stdio.h>
%}
%token id '*' '+' '^' '/' '-' '(' ')'
%left '+' '-'
%left '*' '/'
%left '^'
%left '(' ')'
%%
A : E           {printf("ans = %d",$$);}
E : E '+' E     {$$=$1+$3;}
  | E '-' E     {$$=$1-$3;}
  | E '*' E     {$$=$1*$3;}
  | E '/' E     {$$=$1/$3;}
  | E '^' E     {$$=$1^$3;}
  | '(' E ')'   {$$=$2;}
  | id          {$$=$1;}
%%
int main(){
    printf("enter input :");
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}