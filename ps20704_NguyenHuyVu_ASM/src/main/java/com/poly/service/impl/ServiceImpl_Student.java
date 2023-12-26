package com.poly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.Studentdao;
import com.poly.entity.Student;
import com.poly.service.Service_Student;


@Service
public class ServiceImpl_Student implements Service_Student {
	@Autowired
	Studentdao dao;
	
	@Override
	public List<Student> findAll() {
		return dao.findAll();
	}

	@Override
	public Student findById (String id) {
		return dao.findById(id).get();
	}

	@Override
	public Student create(Student id) {
		return dao.save(id);
	}

	@Override
	public Student update(Student id) {
		return dao.save(id);
	}

	@Override
	public void delete(String id) {
		dao.deleteById(id);
		
	}
}
