let welcome_msg = "Simple Calculator Application";;
let quit_msg = "Type quit to exit";;
let prompt = "Calculation: > ";;

let rec main_loop () =
  print_string prompt; flush stdout;
  let lexbuf = Lexing.from_channel stdin in
    print_endline (string_of_int (Parser.program Lexer.lexeme lexbuf));
    main_loop ()

let main () =
  print_endline welcome_msg;
  print_endline quit_msg;
  main_loop ();;

let _ = main ()
