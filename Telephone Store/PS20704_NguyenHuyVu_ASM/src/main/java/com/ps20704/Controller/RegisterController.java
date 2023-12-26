package com.ps20704.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20704.Dao.AccountDAO;
import com.ps20704.bean.Account;

@Controller
@RequestMapping("home")
public class RegisterController {
	@Autowired
	AccountDAO accountdao;
	@GetMapping("register")
	public String dangky(Model model) {
		Account acc = new Account();
		model.addAttribute("account", acc);
		return "user/register";
	}
	@PostMapping("register")
	public String dangky(Model model, Account acc) {
		acc.setActivated(false);
		acc.setAdmin(false);
		accountdao.save(acc);
		model.addAttribute("message", "Đăng ký thành công");
		return "redirect:/home";
	}
	
}
