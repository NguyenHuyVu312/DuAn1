package com.ps20704.AdminController;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20704.Dao.ProductDAO;
import com.ps20704.bean.Product;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

@Controller
public class AdminCotroller {

	@RequestMapping(value = { "/admin/home" }, method = RequestMethod.GET)
	public String index(Model model) {

		return "admin/home";
	}

	

}
