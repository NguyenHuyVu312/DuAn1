package com.ps20704.AdminController;
import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20704.Dao.OrderDAO;
import com.ps20704.Dao.OrderDetailDAO;
import com.ps20704.bean.Order;
import com.ps20704.bean.OrderDetail;

@Controller
@RequestMapping("admin")
public class OderAdminController {
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@GetMapping("order")	
	public String index(Model model , @RequestParam("p")Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
	
		
		Page<Order> page = orderDAO.findAll(pageable);
		model.addAttribute("page", page);
	
		return "admin/order";
	}
	@RequestMapping("order/delete/{id}")
	public String home(Model model, @RequestParam("id") long id) {
		orderDAO.deleteById(id);		
		return "admin/order";
	}
	
	@RequestMapping("orderDetail")
	public String locBrand(Model model, @RequestParam("id") long id, @RequestParam("p") Optional<Integer> p) {
		Order order = new Order();
		List<Order> orders = orderDAO.findAll();
		for (Order ord : orders) {
			if (ord.getId() == id) {
				order = ord;
				break;
			}
		}	
		model.addAttribute("ord", order);
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<OrderDetail> page = orderDetailDAO.findByOrder(id, pageable);
		model.addAttribute("page", page);
		return "admin/orderDetail";
	}
}
