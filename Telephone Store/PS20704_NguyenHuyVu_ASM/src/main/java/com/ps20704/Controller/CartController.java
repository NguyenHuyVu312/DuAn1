package com.ps20704.Controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20704.Dao.ProductDAO;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.Service.ShoppingCartService;
import com.ps20704.bean.Product;


@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	SessionService session;
	
	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;
	@Autowired
	SessionService sessionService;
	@GetMapping("cart")
	public String index(Model model) {
	
		model.addAttribute("cart", cart);
		sessionService.set("cart1", cart);
		return "user/cart";
	}


	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/home/cart";
	}
	
	@RequestMapping("/cart/sub/{id}")
	public String sub(@PathVariable("id") Integer id) {
		cart.sub(id);
		
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		
		
			cart.remove(id);	
		
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		Integer id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/home/cart";
	}
}
