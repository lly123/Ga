grammar Ga;

options { 
	language = Ruby;
	output = AST;
	ASTLabelType = MfTree; 
}

tokens {
	NUMBER;
        VARIABLE;
	MINUS;
	LET;
}

prog	:	expr+
	;
	
expr	:	number |
		var |
		minus |
		let
	;
	
let	:	'(' 'let' '(' VAR expr ')' '(' expr ')' ')' -> ^(LET VAR expr+)
	;	
	
minus	:	'(' '-' expr expr ')' -> ^(MINUS expr+)
	;
	
var	:	VAR -> ^(VARIABLE VAR)
	;
	
number 	:	NUM -> ^(NUMBER NUM)
	;

NUM  	:	('1'..'9')('0'..'9')*;
VAR	:	('a'..'z')+;
WS	:	(' ' | '\t' | '\r' | '\n')+ {skip();};
