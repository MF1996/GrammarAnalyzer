%{
extern void yyerror(char *);
#include <stdio.h>
%}
%%

%token PROGRAMME DEBUT FIN CONST PV EG VAR DP DPEG PLUS Ent SI AlOR FSI SINON VR VRAI FAUX LTR CHFR
%%
SP: S NL {pintf("programme accepté");exit(0);}
  ;
S:
  PROGRAMME IDENT PV D DEBUT INST FIN
 ;
D:
 C V
 ;
C: 
  CONST DEC
  |
 ;
DEC:
 IDENT EG NUM PV DEC
 |IDENT EG NUM
 ;
V:
 VAR DEV
 |
 ;
DEV:
 IDENT M DP TYPE PV DEV
 |IDENT M DP TYPE
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
 IDENT DPEG EXP I
 |SI IDENT ALORS INSTR SINON INSTR FSI
 |SI IDENT ALORS INSTR FSI
 ;
I: 
 PV INSTR
 |
 ;
EXP:
EXP PLUS EXP
 |IDENT
 |CSTE
 ;
IDENT: 
 LETTRE SUITL
 ;
SUITL
 LETTRE SUITL
 |CHIFFRE SUITL
 |
;
LETTRE:
 LTR
 ;
CHIFFRE:
 CHFR
 ;
CSTE:
 CHIFFRE SUITC
 |
 ;
SUITC:
 SUITC CHIFFRE 
 | 
 ;
M:
 VR IDENT M 
 |
 ;
NUM:
 CSTE
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