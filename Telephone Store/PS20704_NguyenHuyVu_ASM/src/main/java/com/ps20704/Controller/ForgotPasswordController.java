package com.ps20704.Controller;

import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20704.Dao.AccountDAO;
import com.ps20704.Service.ParamService;
import com.ps20704.Service.SessionService;
import com.ps20704.ServiceImpl.MailerServiceImpl;
import com.ps20704.bean.Account;

import net.bytebuddy.utility.RandomString;

@Controller
@RequestMapping("home")
public class ForgotPasswordController {

	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService paramService;
	@Autowired
	MailerServiceImpl mailer;
	@Autowired
	ServletContext app;
	
	@RequestMapping("forgot-password")
	public String index() {
		return "user/forgot-password";
	}
	
	@PostMapping("forgot-password")
	public String change(Model model) {
		String email = paramService.getString("email", "");
		String username = paramService.getString("username", "");
		String subject = "Send your Password!";

		String password;
		String randomPassword = RandomString.make(6);
		  String body = "<html>" +
                  "<head>" +
                  "<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\">" +
                  "<style>" +
                  "   h1 {" +
                  "       color: red;" +
                  "   }" +
                  "   h2 {" +
                  "       color: blue;" +
                  "   }" +
                  "</style>" +
                  "</head>" +
                  "<body>" +
                  "<div class=\"container\">" +
                  "<h1>Shop Hope</h1>" +
                  "<h2>Chào bạn</h2>"+
                  "Bạn đang Hoàn thành password mới, Mã xác nhận là: "+randomPassword +
                  "<p>Vui lòng hoàn thành xác nhận trong vòng 30 phút.</p>"+
                  "<p>Shop Hope</p>"+
                  "<p>Đây là thư từ hệ thống, vui lòng không trả lời thư.</p>"+
                  "</div>" +
                  "</body>" +
                  "</html>";

		try {
			Account user = dao.findById(username).get();
				if(!user.getEmail().equals(email)) {
					model.addAttribute("message", "Wrong Email!");
				}else {
					user.setPassword(randomPassword);
					dao.save(user);
					mailer.send(email, subject, body);
					model.addAttribute("message", "Please check your Email!");
				}
		} catch (Exception e) {
			model.addAttribute("message", "Account invalid!");
		}
		return "user/forgot-password";
	}

}
