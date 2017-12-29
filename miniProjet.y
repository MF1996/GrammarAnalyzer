%{
extern void yyerror(char *);
#include <stdio.h>
%}
%%

%%
void yyerror(char *msg)
{
    pintf("%s\n",msg);
}
void main(void)
{
    yyparse();
}