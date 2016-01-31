{
  open Parser
}

rule lexeme = parse
  | [' ' '\t'] { lexeme lexbuf }
  | ['0'-'9']+ { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | '+' { PLUS }
  | '-' { MINUS }
  | '/' { DIVIDE }
  | '*' { MULTIPLY }
  | '\n' { NEWLINE }
  | "quit" { QUIT }
  | eof { EOF }
