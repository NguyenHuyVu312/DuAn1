package com.ps20704.Service;

import java.util.Collection;

import com.ps20704.bean.CartItem;





public interface ShoppingCartService {

	
	CartItem add(Integer id);

	
	CartItem sub(Integer id);
	
	void remove(Integer id);

	
	
	CartItem update(Integer id, int qty);

	
	
	void clear();

	
	
	Collection<CartItem> getItems();

	
	int getCount();

	double getAmount();

	double getTotal();

	int getsoluong();

	
}
