%{
 #include "miniProjet.tab.h"
%}
%%
"programme" return PROGRAMME;
"debut" return DEBUT;
"fin" return FIN;
"const" return CONST;
";" return PV;
"=" return EG;
"var" return VAR;
":" return DP;
":=" return DPEG;
"+" return PLUS;
"ent" return Ent;
"si" return SI;
"alors" return AlORS;
"fsi" return FSI;
"sinon" return SINON;
"," return VR;
"vrai" return VRAI;
"false" return FAUX;
[a-zA-Z] return LTR;
[0-9] return CHFR;
%%