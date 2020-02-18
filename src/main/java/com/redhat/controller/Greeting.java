package com.redhat.controller;

import org.springframework.web.bind.annotation.RestController;

import com.redhat.repository.TestRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
public class Greeting {

  @Autowired
  TestRepository repository;

  private final Logger logger = LoggerFactory.getLogger(Greeting.class);

  @GetMapping(value="/")
  public String getMethodName() {
    logger.info(">>> Hello world requested <<<");
    return repository.HelloWorld();
  }
}