package com.ps20704.Controller;

import java.io.File;
import java.io.IOException;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Transient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ps20704.Dao.AccountDAO;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.bean.Account;

import org.springframework.util.StringUtils;

@Controller
@RequestMapping("home")
public class ProfileControler {
	@Autowired
	AccountDAO accountDao;
	@Autowired
	SessionService sessionService;
	@Autowired
	ParamService paramService;
	@Autowired
	ServletContext app;
	@Transient
	private MultipartFile photoFile;

	@GetMapping("profile")

	public String home(Model model) {
		Account acc = new Account();
		model.addAttribute("account", acc);
		return "user/profile";
	}

//	
	@RequestMapping("profile/update")
	public String update(Model model, Account acc, @RequestParam("photo1") MultipartFile photo1) {

		String file = "/images/user";
		paramService.save(photo1, file);
		String images = photo1.getOriginalFilename();

		acc.setPhoto(images);

		accountDao.save(acc);

		sessionService.set("isLogin", acc);
		System.out.println("" + acc);

		model.addAttribute("message", "Thông tin đã được cập nhật");

		return "user/profile";
	}

}
