import gleam/io

pub fn main() {
  io.println("Hello from a test web API!")
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
