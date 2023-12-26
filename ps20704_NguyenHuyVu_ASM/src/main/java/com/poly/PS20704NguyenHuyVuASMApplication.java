package com.poly;

import java.io.IOException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PS20704NguyenHuyVuASMApplication {

	public static void main(String[] args) {
		SpringApplication.run(PS20704NguyenHuyVuASMApplication.class, args);
		Runtime rt = Runtime.getRuntime();
	      try {
	    	  rt.exec("cmd /c start chrome.exe http://localhost:8080/test");
	      } catch (IOException e) {
	          e.printStackTrace();
	      }
	}

}
