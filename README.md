# compiler
...if else..
description:
 it shows valid statement when number of if equals to nuber of else orelse its abend with null.
 compilation###
 lex n.l
 yacc n.y
 gcc -o n lex.yy.c
 ./n
 
 ...sybol table..
 description:
 it store the token by token into the table.
 compilation###
 lex block.l
 yacc -dy block.y
 g++ lex.yy.c y.tab.c -ll
 ./a.out
 
 ....while...
 description:
 it converts the for loop and do while into while.
 compilation
 lex loop.l
 yacc -dy loop.y
 gcc lex.yy.c y.tab.c -o loop
 ./loop
 
 ...3-address code...
 description:
 generate 3-address code for the given expression.
 compilation
 lex Threeaddr.l
 yacc -dy Threeaddr.y
 g++ lex.yy.c y.tab.c -ll
 ./a.out
 
 ...backpatch...
 description:
 it find the truelist and falselist. 
 complilation###
 lex backpatch.l
 yacc -dy backpatch.y
 gcc lex.yy.c y.tab.c -o backpatch
 ./backpatch
 
 ...syntax tree...
 description:
 it display the syntax tree for the given expression.
 compilation###
 lex syntree.l
 yacc -dy syntree.y
 g++ lex.yy.c syntree.tab.c -ll
 ./a.out
 
 ...labelled tree...
description:
 it display the labelled tree for the given expression
 compilation###
 lex syntree.l
 yacc -dy syntree.y
 g++ lex.yy.c syntree.tab.c -ll
 ./a.out
 
 ...dag...
 it display the structure of basic block.
 compilation###
 lex threeaddr.l
 yacc -dy threeaddr.y
 g++ lex.yy.c threeaddr.tab.c -ll
 ./a.out
 
 
 
 
 
 
 
 
 
 

 

 
 
