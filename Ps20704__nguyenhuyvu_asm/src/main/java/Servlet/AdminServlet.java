package Servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import DAO.VideoDao;
import Entity.User;
import Entity.Video;

/**
 * Servlet implementation class AdminServlet
 */
@MultipartConfig
@WebServlet({ "/views/home", "/views/quanlyVideo", "/views/editVideo/*", "/views/createVD", "/views/deleteVD",
	"/views/updateVD", "/views/quanlyUser", "/views/editUser/*", "/views/taoUser", "/views/xoaUser",
	"/views/capnhatUser", "/views/report", "/views/adminOff" ,"/views/homecn"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		UserDao userDao = new UserDao();
		User user = new User();
		VideoDao videoDao = new VideoDao();
		Video video = new Video();
		if (uri.contains("editVideo")) {
			request.setAttribute("isAdmin", true);
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			video = videoDao.findbyId(id);
			request.setAttribute("view", "/views/quanlyvideo.jsp");
		}else if(uri.contains("editUser")) {
			request.setAttribute("isAdmin", true);
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			user = userDao.findbyId(id);

			request.setAttribute("view", "/views/quanlyngdung.jsp");
		}
		else if (uri.contains("quanlyVideo")) {
			request.setAttribute("isAdmin", true);
			request.setAttribute("view", "/views/quanlyvideo.jsp");
		} else if (uri.contains("createVD")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
					BeanUtils.populate(video, request.getParameterMap());
					File dir = new File(request.getServletContext().getRealPath("/images"));
					Part photo = request.getPart("poster");
					File photoFile = new File(dir, photo.getSubmittedFileName());
					photo.write(photoFile.getAbsolutePath());
					video.setPoster(photoFile.getName());
					videoDao.create(video);
					request.setAttribute("message", "Thêm mới thành công");
					request.setAttribute("isAdmin", true);
					videoDao.create(video);
					
				} catch (Exception e) {
					request.setAttribute("message", "Thêm mới thất bại");
				}
			}
			request.setAttribute("view", "/views/quanlyvideo.jsp");
		} else if (uri.contains("updateVD")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
					BeanUtils.populate(video, request.getParameterMap());
					File dir = new File(request.getServletContext().getRealPath("/images"));
					Part photo = request.getPart("poster");
					File photoFile = new File(dir, photo.getSubmittedFileName());
					photo.write(photoFile.getAbsolutePath());
					video.setPoster(photoFile.getName());
					videoDao.update(video);
					request.setAttribute("message", "Cập nhật thành công");
					request.setAttribute("isAdmin", true);
					
				} catch (Exception e) {
					request.setAttribute("message", "Cập nhật thất bại");
				}
			}
			request.setAttribute("view", "/views/quanlyvideo.jsp");
		} else if (uri.contains("deleteVD")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
					String id = request.getParameter("id");				
					videoDao.remove(id);
					request.setAttribute("message1", "Xóa thành công");
					request.setAttribute("isAdmin", true);
					request.setAttribute("view", "/views/quanlyvideo.jsp");					
				} catch (Exception e) {
					request.setAttribute("message", "Xóa thất bại");
				}
			}
		} else if (uri.contains("quanlyUser")) {
			request.setAttribute("isAdmin", true);
			request.setAttribute("view", "/views/quanlyngdung.jsp");
		}else if (uri.contains("taoUser")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
					BeanUtils.populate(user, request.getParameterMap());
					userDao.create(user);
					request.setAttribute("message", "Thêm mới thành công");
				} catch (Exception e) {
					request.setAttribute("message", "Thêm mới thất bại");
				}
			}
		} else if (uri.contains("capnhatUser")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			request.setAttribute("isAdmin", true);
			if (method.equalsIgnoreCase("POST")) {
				if (valiDate(request, response)) {
				try {
					BeanUtils.populate(user, request.getParameterMap());
					userDao.update(user);
					request.setAttribute("message1", "Cập nhật thành công");
					request.setAttribute("isAdmin", true);
					
				} catch (Exception e) {
					request.setAttribute("message", "Cập nhật thất bại");
				}
			} else {
				userDao.create(null);
				request.setAttribute("message", "LỖI Cập nhật RỒI");
			}
				request.setAttribute("view", "/views/quanlyngdung.jsp");
			}
		} else if (uri.contains("xoaUser")) {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String method = request.getMethod();
			if (method.equalsIgnoreCase("POST")) {
				try {
//					String id = request.getParameter("id");
//					userDao.remove(id);
//					request.setAttribute("message", "Xóa thành công");
//					request.setAttribute("isAdmin", true);
//					request.setAttribute("view", "/views/quanlyngdung.jsp");
					String id = request.getParameter("id");
					user = userDao.findbyId(id);
					if (user.getId().equals(id)) {						
							userDao.remove(id);
							request.setAttribute("message1", "Xóa thành công");
							request.setAttribute("isAdmin", true);				
						
					}
					
				} catch (Exception e) {
					request.setAttribute("message", "Xóa thất bại");
				}
				request.setAttribute("view", "/views/quanlyngdung.jsp");
			}
		}
		else if (uri.contains("adminOff")) {
			request.getSession().setAttribute("user", null);
			request.setAttribute("isAdmin", false);
			request.setAttribute("view", "/views/firstPage.jsp");
		}else if (uri.contains("homecn")) {
			
			request.setAttribute("isAdmin", true);
			request.setAttribute("view", "/views/firstPage.jsp");
		}
		request.setAttribute("listu", userDao.findAll());
		request.setAttribute("listfilm", videoDao.findAll());
		request.setAttribute("videos", userDao.findAllvd());
//		request.setAttribute("formu", user);
		request.setAttribute("formv", video);
		request.getRequestDispatcher("/views/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
