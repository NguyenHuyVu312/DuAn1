package com.poly.service;

import javax.servlet.ServletContext;

import Entity.User;



public interface EmailService {
	void sendmail(ServletContext context,User recipient, String type);
}
