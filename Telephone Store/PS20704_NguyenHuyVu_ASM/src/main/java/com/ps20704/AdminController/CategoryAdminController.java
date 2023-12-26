package com.ps20704.AdminController;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import com.ps20704.Dao.CategoryDAO;
import com.ps20704.bean.Category;


@Controller
@RequestMapping("admin")
public class CategoryAdminController {
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping("category")
	public String home(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = categoryDAO.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/category";
	}
	
	@RequestMapping("category/form")
	public String form(Model model) {
		Category category = new Category();
		model.addAttribute("item", category);
		return "admin/editcategory";
	}
	
	@RequestMapping("category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Category category = categoryDAO.findById(id).get();
		model.addAttribute("item", category);
		return "admin/editcategory";
	}
	
	@RequestMapping("category/form/create")
	public String create(Category category) {
		categoryDAO.save(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping("category/form/update")
	public String update(Category category) {
		categoryDAO.save(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping("category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		categoryDAO.deleteById(id);
		return "redirect:/admin/category";
	}
}
