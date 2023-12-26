package com.ps20704.Dao;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.ps20704.bean.Category;
import com.ps20704.bean.Product;
import com.ps20704.bean.Report;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	List<Product> findByPrice(double minPrice, double maxPrice);
	Page<Product> findByPrice(Integer minPrice, Integer maxPrice, Pageable pageable);
	
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	List<Product> findByname(String keywords, Pageable pageable);

	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();
	@Transactional
	@Modifying
	@Query("UPDATE Product o SET o.name = ?1, "
			+ "o.price = ?2, o.createDate = ?3, o.available = ?4, o.category = ?5 WHERE o.id = ?6")
	public void updateProduct(String name, int price, Date createDate, boolean available, Category category, int id);


}
