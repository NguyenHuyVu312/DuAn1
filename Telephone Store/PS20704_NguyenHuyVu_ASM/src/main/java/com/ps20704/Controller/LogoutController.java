package com.ps20704.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20704.Service.SessionService;


@Controller
public class LogoutController {
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("home/logout")
	public String logout() {
		sessionService.remove("isLogin");
		return "redirect:/home";
	}
}
