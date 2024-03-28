package com.test
package transport.controllers

import org.springframework.web.bind.annotation.{GetMapping, RestController}

@RestController
final class HealthController:
  @GetMapping("/health")
  def Index(): String = "Healthy"
