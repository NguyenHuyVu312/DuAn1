 package com.ps20704.AdminController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20704.Dao.AccountDAO;

import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.Service.ShoppingCartService;
import com.ps20704.bean.Account;



@Controller
@RequestMapping("admin")
public class UserAdminController {
	@Autowired
	AccountDAO dao;
	@GetMapping("user")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
 		Page<Account> page = dao.findAll(pageable);
 		model.addAttribute("page", page);
	
		return "admin/user";
	}
	@RequestMapping("user/form")
	public String form(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		return "admin/edituser";
	}
	@RequestMapping("user/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
		List<Account> acc = dao.findAll();
		model.addAttribute("items", acc);
		return "admin/edituser";
	}
	@RequestMapping("user/delete/{username}")
	public String delete(Model model, @PathVariable("username") String username) {
		dao.deleteById(username);
		return "redirect:/admin/user";
	}

	@RequestMapping("user/form/create")
	public String create(Account acc) {
		dao.save(acc);
		return "redirect:/admin/user";
	}
	
	@RequestMapping("user/form/update")
	public String update(Account acc) {
		dao.save(acc);
		return "redirect:/admin/user";
	}
	
	@ModelAttribute("activateds")
	public Map<Boolean, String>getActivateds(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Active");
		map.put(false, "Unactive");
		return map;
	}
	
	@ModelAttribute("admins")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}

}
