package com.controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ControllerAdvice
public class ControllerExceptionHandler {
	
	@ExceptionHandler(Exception.class)
    public String exception(Exception e,  Model model) {        
        log.info("내용 : " + e.getMessage());
        
        model.addAttribute("message", e.getMessage());
        return "/error";
    }
}
