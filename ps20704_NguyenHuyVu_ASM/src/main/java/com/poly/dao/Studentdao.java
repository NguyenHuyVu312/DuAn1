package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Student;



public interface Studentdao extends JpaRepository<Student, String> {

}
