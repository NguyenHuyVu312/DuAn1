package com.uni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class IntroController {
	@RequestMapping("gioithieu")
	public String intro(Model model) {
		return "home/gioithieu/intro";
	}
}