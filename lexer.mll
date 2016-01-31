{
  open Parser
}

rule lexeme = parse
  | [' ' '\t'] { lexeme lexbuf }
  | ['0'-'9']+ { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | '+' { PLUS }
  | '-' { MINUS }
  | '\n' { NEWLINE }
  | eof { EOF }
