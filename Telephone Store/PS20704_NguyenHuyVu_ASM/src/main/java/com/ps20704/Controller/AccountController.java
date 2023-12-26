package com.ps20704.Controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ps20704.Dao.AccountDAO;
import com.ps20704.Dao.ProductDAO;
import com.ps20704.Service.CookieService;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.bean.Account;

@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	HttpServletRequest request;

	@Autowired
	CookieService cookieService;

	@Autowired
	ParamService paramService;

	@Autowired
	SessionService sessionService;

	@Autowired
	ServletContext app;

	@RequestMapping(value = { "/home/login" }, method = RequestMethod.GET)
	public String index(Model model) {

		return "user/login";
	}

	@PostMapping("login")
	public String login2(Model model) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);

		try {
		Account user = dao.findById(un).get();
		if (user.getPassword().equals(pw)) {
			sessionService.set("isLogin", user);
		
			if (rm == true) {
				cookieService.add("username", user.getUsername(), 10);
				cookieService.add("password", user.getPassword(), 10);
				return "redirect:/home";
			} else {
				cookieService.remove("user");
				cookieService.remove("pass");
				return "redirect:/home";
			}
		} else {
			model.addAttribute("message", "Sai password!");
		}
	} catch (Exception e) {
		model.addAttribute("message", "Tài khoản không tồn tại");
	}
		return "user/login";
	}

}
