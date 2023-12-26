package com.poly.service;

import java.util.List;

import com.poly.entity.Student;

public interface Service_Student {

	List<Student> findAll();

	Student findById(String id);

	Student create(Student id);

	Student update(Student id);

	void delete(String id);

}
