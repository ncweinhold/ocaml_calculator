%token <int> INT
%token PLUS MINUS DIVIDE MULTIPLY
%token EOF
%token QUIT
%token NEWLINE

%left PLUS MINUS
%left MULTIPLY DIVIDE

%start program
%type <int> program

%%

program:
  | NEWLINE { 0 }
  | expression = expr NEWLINE { expression }
  | expression = expr EOF { expression }
;

expr:
  | i = INT { i }
  | e1 = expr PLUS e2 = expr { e1 + e2 }
  | e1 = expr MINUS e2 = expr { e1 - e2 }
  | e1 = expr MULTIPLY e2 = expr { e1 * e2 }
  | e1 = expr DIVIDE e2 = expr { e1 / e2 }
  | QUIT { exit 0 }
;

%%