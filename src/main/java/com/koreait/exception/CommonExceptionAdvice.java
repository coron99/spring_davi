package com.koreait.exception;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j;

@ControllerAdvice
@Log4j
public class CommonExceptionAdvice {
	
	@ExceptionHandler(Exception.class)	
	public String except(Exception e, Model model) {
		//예외가 발생하게 되면 해당 예외 필드가 메모리에 할당
		model.addAttribute("exception", e);
		log.info(e.getMessage());
		return "404";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String Handle404() {
		log.info("404 들어옴");
		return "404";
	}
}
