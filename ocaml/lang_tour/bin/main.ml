let () =
  print_endline "Hello, World!";
  print_endline (string_of_int Lang_tour.Values.conversion)

let () =
  print_endline (string_of_int (Lang_tour.Values.multiplication 5));
  List.iter (Printf.printf "%d ") Lang_tour.Values.x;
  List.iter (Printf.printf "%d ") Lang_tour.Values.y
