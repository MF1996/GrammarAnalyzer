%{
extern void yyerror(char *);
int yylex();
#include <stdio.h>
%}
%%

%token PROGRAMME DEBUT FIN CONST PV EG VAR DP DPEG PLUS Ent SI AlOR FSI SINON VR VRAI FAUX ident Cste
%%
S:
  PROGRAMME ident PV D DEBUT INST FIN {pintf("programme accepté");exit(0);}
 ;
D:
 C V
 ;
C: 
  CONST DEC
  |
 ;
DEC:
 ident EG NUM PV DEC
 |ident EG NUM
 ;
V:
 VAR DEV
 |
 ;
DEV:
 ident M DP TYPE PV DEV
 |ident M DP TYPE
 ;
TYPE:
 ENT
 |BOOL
 ;
INST:
 INSTR
 |
 ;
INSTR:
 ident DPEG XE I
 |SI ident ALORS INSTR SINON INSTR FSI
 |SI ident ALORS INSTR FSI
 ;
I: 
 PV INSTR
 |
 ;
 XE : ident EXP
    | Cste EXP
  
  
EXP:
  PLUS ident EXP
 |PLUS Cste EXP
 | ident
 |Cste
 ;
M:
 VR ident M 
 |
 ;
NUM:
 Cste
 |VRAI
 |FAUX
 ; 
 %%
void yyerror(char *msg)
{
    pintf("%s\n",msg);
}
void main(void)
{
    yyparse();
}
