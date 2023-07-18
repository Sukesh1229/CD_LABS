/*LEX program to print the number of lines,words and characters in the input.*/

%{
	int lc=0,c=0,tc=0,sc=0,wc=0;
%}
%%
\n {lc++;}
[ ]+ {sc++;}
\t {tc++;}
[a-zA-Z0-9]+ {wc++;c=c + yyleng;}
%%
int yywrap(){}
int main()
{
	printf("Enter a set of lines:\n");
	yylex();
	printf("Lines count=%d\n",lc);
	printf("Spaces count=%d\n",sc);
	printf("tabs count=%d\n",tc);
	printf("Characters count=%d\n",c);
	printf("Words count=%d",wc);
	
}