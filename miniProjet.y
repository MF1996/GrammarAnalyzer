%{
extern void yyerror(char *);
#include <stdio.h>
%}
%%

%%
void yyerror(char *msg)
{
    printf("%s\n",msg);
}
void main(void)
{
    yyparse();
}