package com.ps20704.Dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ps20704.bean.Category;
public interface CategoryDAO extends JpaRepository<Category, String>{

}
