package com.ps20704.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Locale;
import java.util.Optional;


import com.ps20704.Dao.AccountDAO;
import com.ps20704.Dao.ProductDAO;
import com.ps20704.Service.SessionService;
import com.ps20704.Service.ShoppingCartService;
import com.ps20704.bean.Account;
import com.ps20704.bean.Product;


@Controller
public class HomeCotroller {
	@Autowired
	ProductDAO dao;
	@Autowired
	ShoppingCartService cart;
	@Autowired
	SessionService session;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		int pageMin=p.orElseGet(()-> 0);
		if (pageMin<0) {
			pageMin=0;
		}
		Pageable pageable = PageRequest.of(pageMin, 9);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);

		return "user/index";
	}

	@RequestMapping("/home/search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String keywords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.findByKeywords("%" + keywords + "%", pageable);
		model.addAttribute("page", page);
		return "user/index";
	}

	@RequestMapping("/home/search/{id}")
	public String edit(Model model, @PathVariable("id") String id,@RequestParam("p") Optional<Integer> p) {
	
		String keywords = id;
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = dao.findByKeywords("%" + keywords + "%", pageable);
		model.addAttribute("page", page);
		return "user/index";
	}
	@RequestMapping(value = { "/home/detail" })
	public String chitiet() {
		return "user/detail";
	}

	@RequestMapping(value = { "/home/index" })
	public String Ip(Model model,@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 8);			
		String sam = "samsung";
		List<Product> sm = dao.findByname("%"+sam+"%",pageable);
		String keywords = "iphone";

		List<Product> ip = dao.findByname("%"+keywords+"%",pageable);
		model.addAttribute("sm", sm);
		model.addAttribute("ip", ip);
	
		return "user/home";
	}


	
}
