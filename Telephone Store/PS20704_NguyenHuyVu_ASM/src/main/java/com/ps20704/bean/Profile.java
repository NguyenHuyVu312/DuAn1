package com.ps20704.bean;

import org.springframework.web.multipart.MultipartFile;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Profile {
	String username;
	String password;
	String fullname;
	String email;
	String photo;
	boolean activated;
	boolean admin;


 

}
