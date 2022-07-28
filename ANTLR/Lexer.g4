lexer grammar Lexer;

//Token
NUMBER:'0'|'-'?[1-9][0-9]|[0-9];

VOID:'VOID' | 'void';
PUBLIC : ' PUBLIC' | 'public';
PRIVATE: 'PRIVATE' | 'private';
LEFT_PAREN:  '(' ;
RIGHT_PAREN:  ')'  ;
IF: 'IF' | 'if';
THEN: 'THEN' | 'then';
ELSE:'ELSE' | 'else';
IN :'IN' | 'in';
PRINT : 'PRINT' | 'print';
STRING: QUOTATIONS [a-zA-Z]+ QUOTATIONS ;
INTEGER: 'INT' | 'int';
STRING_VALUE: 'STRING' | 'string';
BOOL:'BOOL' | 'bool';
RETURN:'RETURN' | 'return';
SEMICOLON: ';';
LBRACKET : '{';
RBRACKET : '}';
PLUS: '+';
MINUS: '-';
MULTIPLICATION: '*';
TRUE: 'TRUE' | 'true';
FALSE: 'FALSE' | 'false';
COMMA: ',';
DIVISION : '/';
EQUALS_ARROW: '=>';
ARROW: '->';
EQUALS: '=';
BACKSLASH:  '\\';
QUOTATIONS:'"';
DOUBLE_EQUALS:'==';



ID  : ID_START ID_CHAR | ID_START | ID_CHAR;
    fragment ID_START: [a-zA-Z]+;
    fragment ID_CHAR : ID_START | [0-9]+;
WS: [ \t\r\n] -> skip;

