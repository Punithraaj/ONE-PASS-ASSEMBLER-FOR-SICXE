lex -ll preprocess.l
gcc lex.yy.c -w
./a.out $1
rm lex.yy.c a.out
gcc includefile.h
yacc -d pass1.y
lex -ll proj.l
gcc lex.yy.c y.tab.c -w
./a.out $1
