<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   
   
   body {
        position: relative;
        background-image: url(/Ps20704__nguyenhuyvu_asm/images/backgroup.png);

        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
    }

    .education {
        position: absolute;
        margin-top: 20px;
        right: 60px;

    }

    .education>h1 {
        font-weight: bolder;
        font-style: italic;
        color: rgb(230, 155, 69);

    }

    .banner {
        margin-left: 50px;

    }

    /* CSS cho ICON LOGIN*/
    .bi {
        color: rgba(34, 179, 184, 0.975);
        display: inline-block;
        position: relative;
        left: 50%;
        transform: translateX(-50%);
        margin-bottom: 10px;
    }

    .card {
        border-radius: 5%;

    }

    .login {
        display: inline-block;
        position: relative;
        left: 50%;
        transform: translateX(-50%);
    }

 

    .input-group-text {
        background: none;
        font-size: 25px;
    }

    .form-group {
        margin-left: 40px;
    }
</style>
</head>
<body >
<c:url var="layout" value="/views"></c:url>
  <div ng-app="myapp" ng-controller="myctrl">
 <div class="card col-sm-5 col-9 my-5 m-auto border-0 shadow-lg ">
        <div class="card-body ">
            <form method="POST">
                <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-person-bounding-box text-primary" viewBox="0 0 16 16">
                    <path d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1h-3zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5zM.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5z"/>
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm8-9a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                  </svg>
              
                <div class="title text-center mb-3">
                    <h2 class="fw-bolder">ĐĂNG KÝ</h2>
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-person-fill m-auto text-primary "></i></span>
                    <div class="form-floating">
                        <input name="id" type="text" class="form-control" id="floatingUserName" placeholder="username" >
                       
                        <label  for="floatingUserName" >Tên đăng nhập</label>
                       
                      
                    </div>                
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-lock-fill m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="password"  name="password" class="form-control" id="floatingPassword" placeholder="username" >
                        <label for="floatingUserName">Mật khẩu</label>
                     
                    </div>
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-activity m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="text" name="fullname"  class="form-control" id="floatingFullName" placeholder="fullName" >
                        <label for="floatingFullName">Họ và tên</label>
                       
                    </div>
                </div>
                
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-envelope-at-fill m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="email" >
                        <label for="floatingEmail">Email</label>
                        
                    </div>
                </div>
               
                <div class="input-group mb-3 px-5">
					<div class="form-group py-2">
						<div class="form-check form-check-inline p-1">Role</div>
						<div class="form-check form-check-inline">
							<input name="admin" class="form-check-input" type="radio"
								id="inlineRadio1" value="true"> <label
								class="form-check-label" for="inlineRadio1">Admin</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="admin" class="form-check-input" type="radio"
								id="inlineRadio2" value="false"> <label
								class="form-check-label" for="inlineRadio2">User</label>
						</div>
					</div>
				</div>
				<c:if test="${!empty message}">
					<div class="text-center mb-3 text-danger fw-bolder">${message}</div>
				</c:if>
                <div class="d-grid gap-2 col-5 m-auto">
                    <button formaction="${layout}/dangky" class="btn btn-light btn-outline-primary" >
                        Đăng ký
                    </button>
                </div>
                <div class="forgot text-center mt-4">
                    Bạn đã có tài khoản ?<a href="${layout}/dangnhap">Đăng nhập tại đây</a>
                </div>
            </form>
        </div>
    </div>
  </div>
</body>
</html>