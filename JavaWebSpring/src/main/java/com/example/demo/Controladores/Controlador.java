package com.example.demo.Controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping; 

@Controller
public class Controlador {
	
	@RequestMapping("")
	public String index() {
		return "index";
	}

}
