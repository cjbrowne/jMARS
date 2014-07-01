%lex

%%
\s+                     // skip whitespace
[0-9]+("."[0-9]+)?\b    return 'NUMBER';
"DAT"                   return 'DAT';
"MOV"                   return 'MOV';
"SUB"                   return 'SUB';
"MUL"                   return 'MUL';
"DIV"                   return 'DIV';
"MOD"                   return 'MOD';
"JMP"                   return 'JMP';
"JMZ"                   return 'JMZ';
"JMN"                   return 'JMN';
"DJN"                   return 'DJN';
"SPL"                   return 'SPL';
"SLT"                   return 'SLT';
"SEQ"|"CMP"             return 'SEQ';
"SNE"                   return 'SNE';
"NOP"                   return 'NOP';

%start program

%%

program
    : statements EOF
        { }
    ;

statements
    : statement
    | statements statement
    ;

statement
    : 'DAT' operand operand
    | 'MOV' operand operand
    | 'SUB' operand operand
    ;
operand
    : '#' 'NUMBER'
        {{ $$ = coreMem[$1]; }}
    | '@' 'NUMBER'
    | '*' 'NUMBER'
    | '$' 'NUMBER'
    ;
