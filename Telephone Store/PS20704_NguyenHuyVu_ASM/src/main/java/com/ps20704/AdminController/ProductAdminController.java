package com.ps20704.AdminController;

import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;

import com.ps20704.Dao.CategoryDAO;
import com.ps20704.Dao.ProductDAO;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.bean.Category;
import com.ps20704.bean.Product;

@Controller
@RequestMapping("admin")
public class ProductAdminController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SessionService session;
	@GetMapping("product")
	public String home(Model model, @RequestParam("p") Optional<Integer> p) {
		int pageMin=p.orElseGet(()-> 0);
		if (pageMin<0) {
			pageMin=0;
		}
		Pageable pageable = PageRequest.of(pageMin, 5);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/product";
	}
	@RequestMapping("/product/search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String keywords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = productDAO.findByKeywords("%" + keywords + "%", pageable);
		model.addAttribute("page", page);
		return "admin/product";
	}
	@RequestMapping("product/form")
	public String form(Model model) {
		Product product = new Product();
		model.addAttribute("item", product);
		return "admin/editproduct";
	}

	@RequestMapping("product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = productDAO.findById(id).get();
		model.addAttribute("item", item);
		List<Product> product = productDAO.findAll();
		model.addAttribute("items", product);
		return "admin/editproduct";
	}

	@RequestMapping("product/form/create")
	public String create(Product product) {
		product.setCreateDate(new Date());
		productDAO.save(product);
		return "redirect:/admin/product";
	}

	@RequestMapping("product/form/update")
	public String update(Product product,@RequestParam("imagesp") MultipartFile multipartFile) {
		String file = "/images/sanpham/";
		paramService.save(multipartFile, file);
		String images = multipartFile.getOriginalFilename();
		if(images.isEmpty()) {
			productDAO.updateProduct(product.getName(), product.getPrice(), product.getCreateDate(), product.getAvailable(), product.getCategory(), product.getId());
		}else {
			product.setImage(images);
			productDAO.save(product);
		}

		return "redirect:/admin/product";
	}

	@RequestMapping("product/form/detele/{id}")
	public String delete(@PathVariable("id") Integer id) {
		productDAO.deleteById(id);
		return "redirect:/admin/product";
	}

	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.findAll();
		return categories;
	}

	@ModelAttribute("availables")
	public Map<Boolean, String> getAdmins() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Còn hàng");
		map.put(false, "Hết hàng");
		return map;
	}
}
