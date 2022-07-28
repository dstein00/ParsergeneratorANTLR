parser grammar Parser;

options{
       tokenVokab = Lexer;
}

expression : lambda | variable | ifthenelse | calculation | booleans | equalsValue | print | functions | parameter;

calculation : addition | division | subtraction | multiplication | multiplication ((PLUS | MINUS) multiplication)*;

lambda: BACKSLASH ID EQ_ARROW expression;

variable: ID EQUALS (NUMBER | LEFT_PAREN equalsValue RIGHT_PAREN | calculation | booleans | STRING );

booleans: TRUE | FALSE;

ifthenelse:IF LEFT_PAREN (equalsValue|lambda) RIGHT_PAREN THEN (expression|functions) ELSE (expression|functions)*;

addition: (ID | NUMBER) (PLUS (ID | NUMBER))+;

subtraction: (ID | NUMBER) (MINUS (ID | NUMBER))+;

multiplication: (ID | NUMBER) (MULTIPLICATION (ID| NUMBER))+;

division:(ID | NUMBER) (DIV (ID | NUMBER))+;

equalsValue :  (ID | NUMBER | booleans | LEFT_PAREN (addition|subtraction|multiplication|division) RIGHT_PAREN)  DOUBLE_EQUALS (ID | NUMBER | booleans | LEFT_PAREN (addition|subtraction|multiplication|division) RIGHT_PAREN) ;

publicPrivate: PUBLIC | PRIVATE ;

parameter: (INTEGER | STRING_VALUE) ID;

retValue: STRING_VALUE | INTEGER | VOID;

print: PRINT LEFT_PAREN STRING RIGHT_PAREN;

return: NUMBER|STRING|ID EQUALS (NUMBER |addition | subtraction |  multiplication ((PLUS | MINUS) multiplication)* | STRING );

functions: publicPrivate retValue ID LEFT_PAREN (parameter  COMMA?)* RIGHT_PAREN LBRACKET (lambda | variable | ifthenelse | print)* (RETURN return)* RBRACKET| print;









