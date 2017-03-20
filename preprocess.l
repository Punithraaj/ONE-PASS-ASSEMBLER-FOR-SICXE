%{
  #include <stdio.h>
%}
%%
".MODEL SMALL" {fprintf(yyout,"");}
".CODE" {fprintf(yyout,"");}
".DATA" {fprintf(yyout,"");}
. {ECHO;}
%%
int yywrap(){return 1;}
int main(int argc, char *argv[]){
//(".MODEL")("SMALL"|"LARGE"|"HUGE"|"TINY") 
yyin = fopen(argv[1],"r+");
yyout = fopen(argv[1],"r+");
yylex();
close(yyin);
close(yyout);
return 0;
}
