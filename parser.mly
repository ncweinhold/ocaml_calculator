%token <int> INT
%token PLUS MINUS
%token EOF
%token NEWLINE

%left PLUS MINUS

%start program
%type <int> program

%%

program:
  | expression = expr NEWLINE { expression }
  | expression = expr EOF { expression }
;

expr:
  | i = INT { i }
  | e1 = expr PLUS e2 = expr { e1 + e2 }
  | e1 = expr MINUS e2 = expr { e1 - e2 }
;

%%