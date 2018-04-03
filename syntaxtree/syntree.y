%{
	#include<bits/stdc++.h>
	using namespace std;
	int yywrap();
	int yylex();	
	void yyerror(char *s);
	int yyparse();
%}

%token PL MI MUL DIV OP CL EQ ID VAL SC UNR POW

%union{
	char *str;
}

%type <str> s e t f g PL MI MUL DIV OP CL EQ ID VAL SC UNR POW

%%
s : e {cout<<"done"<<endl;}
e : e PL t | e MI t | t ;
t : t MUL f | t DIV f | f ;
f : f POW g | g ;
g : OP e CL | ID | VAL {cout<<$1<<endl;$$.value=$1;cout<<$$.value<<endl;}| MI ID | MI VAL;

%%

void yyerror(char *s)
{
	printf("%s\n",s);
}
int yywrap()
{
	return 1;
}
int main(void)
{
	yyparse();
}