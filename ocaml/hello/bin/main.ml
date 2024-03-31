let () =
  Printf.printf "%s\n" Hello.En.v;
  Printf.printf "%s\n" Hello.Es.v;

  Dream.run ~interface:"0.0.0.0"
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/health" (fun _ ->
      Dream.empty `No_Content);
    Dream.get "/hello" (fun _ -> Dream.html Hello.En.v);
  ]