import gleam/bytes_builder.{type BytesBuilder}
import gleam/http/elli
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import gleam/io

pub fn my_service(req: Request(t)) -> Response(BytesBuilder) {
  let body = bytes_builder.from_string(req.)

  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

pub fn main() {
  io.println("Hello from a test web API!")
  elli.become(my_service, on_port: 3000)
}
// import gleam/result
// import gleam/string
// import gleam/list
// import argv
// import envoy

// pub fn main() {
//   case argv.load().arguments {
//     ["get", name] -> get(name)
//     _ -> io.println("Usage: vars get <name>")
//   }
// }

// fn get(name: String) -> Nil {
//   let value =
//     envoy.get(name)
//     |> result.unwrap("")

//   case name {
//     "PATH" ->
//       string.split(value, on: ":")
//       |> list.each(io.println)
//     _ -> io.println(format_pair(name, value))
//   }
// }

// fn format_pair(name: String, value: String) -> String {
//   name <> "=" <> value
// }
