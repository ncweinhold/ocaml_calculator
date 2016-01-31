let welcome_msg = "Simple Calculator Application";;
let prompt = "Ready >>> ";;

let main () =
  let lexbuf = Lexing.from_channel stdin in
    print_endline (string_of_int (Parser.program Lexer.lexeme lexbuf));;

let _ = main ()
