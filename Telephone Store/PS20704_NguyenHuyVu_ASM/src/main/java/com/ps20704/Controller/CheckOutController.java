package com.ps20704.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20704.Dao.OrderDetailDAO;
import com.ps20704.Service.CheckOutService;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.Service.ShoppingCartService;
import com.ps20704.bean.Order;
import com.ps20704.bean.OrderDetail;
import com.ps20704.bean.Account;

@Controller
@RequestMapping("home")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	SessionService sessionService;

	@Autowired
	ParamService paramService;

	@Autowired
	CheckOutService checkOutService;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "user/checkout";
	}

	@RequestMapping("order-detail")
	public String orderdetail(Model model) {
		String address = paramService.getString("address", "");
		if (!shoppingCartService.getItems().isEmpty()) {
			if (address.equals("")) {
				return "redirect: user/checkout";
			}
			Account user = sessionService.get("isLogin");
			Order order = checkOutService.order(user, address);
			List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items", items);
			return "user/order-detail";
		}
		return "redirect:/home/index";
	}
}
