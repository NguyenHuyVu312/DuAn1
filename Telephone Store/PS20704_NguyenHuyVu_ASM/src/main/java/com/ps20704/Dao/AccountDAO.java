package com.ps20704.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.ps20704.bean.Account;



public interface AccountDAO extends JpaRepository <Account, String>{
	 Optional<Account> findByUsername(String username);
	   
		@Query("SELECT o FROM Account o WHERE o.fullname LIKE ?1")
		Page<Account> findByKeywords(String keywords, Pageable pageable);
		
		@Query("SELECT o FROM Account o")
		Page<Account> findAll(Pageable pageable);
		@Transactional
		@Modifying
		@Query("UPDATE Account o SET o.password = ?1, "
				+ "o.fullname = ?2, o.email = ?3, o.activated = ?4, o.admin = ?5 WHERE o.username = ?6")
		public void updateAcc(String password, String fullname, String email, boolean activated, boolean admin, String username);

	
}
