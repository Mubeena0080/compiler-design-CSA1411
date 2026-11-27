%{
#include<stdio.h>
int count=0;
%}
%%
[^a-zA-Z0-9 \t\n]  { count++; }
.|\n                 ;
%%
int main()
{
    printf("Enter text: ");
    yylex();
    printf("Special symbols = %d\n",count);
    return 0;
}
int yywrap(){ return 1; }
