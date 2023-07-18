%{
#include<stdio.h>
%}
%token id '*' '-' '+' '/' '^'
%left '+' '-'
%left '*' '/'
%left '^'
%left '(' ')'
%%
A : E {printf("valid");}
E : E '/' E
  | E '+' E
  | E '-' E
  | E '^' E
  | E '*' E
  | id
%%
int main(){
    yyparse();
}
int yyerror(char *s){
    printf("%s",s);
}



/*
we need to write precedence for Ambiguoice grammer
for non Ambiguoice grammer no nedd to write
*/