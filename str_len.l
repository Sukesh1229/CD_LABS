%{
  #include<stdio.h> 
  int length;
%}
%%
[a-zA-Z0-9]+ {length=yyleng; fun(length);}
%%
fun(int length)
{
	printf("Length of %s is : %d",yytext,length);
}
int yywrap(){return 0;}
int main()
{
  printf("Enter a string:");
  yylex();
  return 0;
 }