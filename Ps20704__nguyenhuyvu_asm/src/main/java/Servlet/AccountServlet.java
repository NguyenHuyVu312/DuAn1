package Servlet;

import java.io.IOException;
//import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
//import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import Entity.User;
import Entity.Video;
import Utils.CookieUtils;
import Utils.JpaUtils;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet({ "/views/firstPage", "/views/dangnhap", "/views/dangky", "/views/capnhat", "/views/logOff",
		"/views/chitietvd", "/views/like", "/views/quenmk" ,"/views/doimk"})
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EntityManager em = JpaUtils.getEntityManager();
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		UserDao dao = new UserDao();
		HttpSession session = request.getSession(true);
		String uri = request.getRequestURI();
		if (uri.contains("dangnhap")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			request.setAttribute("view", "/views/dangnhap.jsp");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				String id = request.getParameter("id");
				String pass = request.getParameter("password");
				try {
					User user = new User();
					UserDao udao = new UserDao();
					user = udao.findbyId(id);
					if (!user.getPassword().equals(pass)) {
						request.setAttribute("message", "Sai mật khẩu");
					} else {
						request.setAttribute("message", "Đăng nhập thành công !");
						boolean admin = user.getAdmin();
						int hours = 0;
						if (admin == true) {
							request.setAttribute("isAdmin", true);
						}
						session.setAttribute("user", user);
						if (user != null) {
							hours = 60 * 60;
						}
						CookieUtils.add("username", id, hours, response);
						CookieUtils.add("password", pass, hours, response);
						request.setAttribute("view", "/views/firstPage.jsp");
					}
				} catch (Exception e) {
					request.setAttribute("message", "Sai tên đăng nhập");
				}
			}
		} else if (uri.contains("dangky")) {
//			request.setAttribute("view", "/views/dangky.jsp");
//			String method = request.getMethod();
//			if (method.equalsIgnoreCase("POST")) {
//				try {
//					User user = new User();
//					BeanUtils.populate(user, request.getParameterMap());
////					UserDao dao = new UserDao();
//					dao.create(user);
//					request.setAttribute("message", "Đăng ký thành công");
//
//				} catch (Exception e) {
//					// TODO: handle exception
//					request.setAttribute("message", "LỖI ĐĂNG KÝ RỒI");
//				}
//			}
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			request.setAttribute("view", "/views/dangky.jsp");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				User user = new User();
				UserDao udao = new UserDao();
				user = new User();
				if (valiDate(request, response)) {
					try {
						BeanUtils.populate(user, request.getParameterMap());
						udao.create(user);
						request.setAttribute("message", "Đăng ký thành công");
					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
					}
				} else {
					udao.create(null);
					request.setAttribute("message", "LỖI ĐĂNG KÝ RỒI");
				}
			}
		} else if (uri.contains("capnhat")) {
			request.setAttribute("view", "/views/capnhattk.jsp");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
					User user = new User();
//					UserDao dao = new UserDao();
					BeanUtils.populate(user, request.getParameterMap());
					dao.update(user);
					request.setAttribute("message", "Cập nhật thành công");
				} catch (Exception e) {
					// TODO: handle exception
					request.setAttribute("message", "LỖI CẬP NHẬT RỒI");
				}
			}
		} else if (uri.contains("like")) {
			try {
				User user = new User();
				UserDao udao = new UserDao();
				user = udao.findbyId(CookieUtils.get("username", request));
				TypedQuery<Video> query = em.createNamedQuery("Video.findByUser", Video.class);
				String usser1=user.getId();
				query.setParameter("id", usser1);
				List<Video> videolist = query.getResultList();
				;
		
				request.setAttribute("list123", videolist);
				request.setAttribute("view", "/views/trangyeuthich.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			request.setAttribute("view", "/views/trangyeuthich.jsp");

		}else if (uri.contains("doimk")) {
			request.setAttribute("view", "/views/doimk.jsp");
			UserDao udao = new UserDao();
			User user = new User();
			user = udao.findbyId(CookieUtils.get("username", request));
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				String oldP = request.getParameter("mkcu");
				String newP = request.getParameter("mkmoi");
				String confirmP = request.getParameter("mknhaplai");
				if (!newP.equals(confirmP)) {
					request.setAttribute("error", "Vui lòng xác nhận lại mật khẩu");
				}else if(oldP.equals(newP)|| oldP.equals(confirmP)) {
					request.setAttribute("error", "Mật khẩu mới trùng với mật khẩu hiện tại");
				}else {
					user.setPassword(newP);
					udao.update(user);
					CookieUtils.add("password", newP, 30*60 , response);
					request.setAttribute("error", "Đổi thành công");
				}
			
			}
		}

		 else if (uri.contains("logOff")) {
			request.getSession().setAttribute("user", null);
			request.setAttribute("view", "/views/firstPage.jsp");
		} else if (uri.contains("firstPage")) {
			request.setAttribute("view", "/views/firstPage.jsp");
		} else if (uri.contains("chitietvd")) {

			request.setAttribute("view", "/views/chitiet.jsp");
		} else if (uri.contains("quenmk")) {

			request.setAttribute("view", "/views/quenmk.jsp");
			
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {

					request.setAttribute("message", "Cập nhật thành công");
				} catch (Exception e) {
					// TODO: handle exception
					request.setAttribute("message", "LỖI CẬP NHẬT RỒI");
				}

			}

		}

		request.setAttribute("videos", dao.findAllvd());
		request.getRequestDispatcher("/views/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	private boolean valiDate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("id");
		String password = request.getParameter("password");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		boolean admin = Boolean.parseBoolean(request.getParameter("admin"));
		if (username.isEmpty()) {
			return false;
		} else if (password.isEmpty()) {
			return false;
		} else if (fullname.isEmpty()) {
			return false;
		} else if (email.isEmpty()) {
			return false;
		}
		return true;
	}

}
