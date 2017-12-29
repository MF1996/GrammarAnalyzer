%{
extern void
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