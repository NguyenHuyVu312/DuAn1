package com.obooks.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.obooks.dao.Productdao;
import com.obooks.entity.Product;
import com.obooks.service.Service_Product;

@Service
public class ServiceImpl_Product implements Service_Product{
	@Autowired private Productdao pDao;

	@Override
	public List<Product> findAll() {
		return pDao.findAll();
	}

	@Override
	public Product findById(Integer productID) {
		return pDao.findById(productID).get();
	}

	@Override
	public List<Product> findByCategoryID(String cid) {
		return pDao.findByCategoryId(cid);
	}

	@Override
	public Product create(Product product) {
		return pDao.save(product);
	}

	@Override
	public Product update(Product product) {
		return pDao.save(product);
	}

	@Override
	public void delete(Integer id) {
		pDao.deleteById(id);
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return pDao.findAll(pageable);
	}

	@Override
	public Page<Product> findByCategoryID(String cid,Pageable pageable) {
		return pDao.findByCategoryId(cid,pageable);
	}

	/* Summary Section */
	@Override
	public Long getAvailable() {
		return pDao.getAvailable();
	}

	@Override
	public Long getTotalProduct() {
		return pDao.count();
	}

	@Override
	public List<Object[]> numberOfProductSoldByType() {
		return pDao.numberOfProductSoldByType();
	}

	@Override
	public List<Object[]> getPercentByCate() {
		return pDao.getPercentByCate();
	}

	@Override
	public List<Object[]> availableRate() {
		return pDao.availableRate();
	}

	@Override
	public List<Object[]> top10Product() {
		return pDao.top10Product();
	}

	@Override
	public List<Product> findByUsername(String username) {
		// TODO Auto-generated method stub
		return pDao.findByUsername(username);
	}
}
