package com.hello.demo;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("")
public class DemoController {

  @GetMapping("")
  public ResponseEntity<String> demo(){
    return new ResponseEntity<>("I AM WORKING HERE", HttpStatus.OK);
  }
}
