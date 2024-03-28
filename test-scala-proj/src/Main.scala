package com.test

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class Application:
  def run(): Unit =
    SpringApplication.run(classOf[Application])

@main
def entryPoint(): Unit =
  println("Hello, World")
  Application().run()