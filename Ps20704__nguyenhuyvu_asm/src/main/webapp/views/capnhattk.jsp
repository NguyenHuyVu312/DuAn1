<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
   body {
        position: relative;
        background-image: url(/Ps20704__nguyenhuyvu_asm/images/backgroup.png);

        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
    }
    /*CSS cho header*/
    body {
        margin: 0;
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
    .user {
        color: rgba(34, 179, 184, 0.975);
        display: inline-block;
        position: relative;
        left: 50%;
        transform: translateX(-50%);
        margin-bottom: 10px;
    }

    .bi {
        color: rgba(34, 179, 184, 0.975);

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

    a {
        text-decoration: none;
        margin-left: 10px;
    }

    .input-group-text {
        background: none;
        font-size: 25px;
    }

    .form-group {
        margin-left: 40px;
    }
</style>
<body>
  <div class="container">
       <c:url var="layout" value="/views"></c:url>
    </div>
    <div class="card col-sm-5 col-9 my-5 m-auto border-0 shadow-lg ">
        <div class="card-body">
            <form method="POST">
                <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor"
                    class="user bi-person-circle text-primary" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                    <path fill-rule="evenodd"
                        d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                </svg>
                <div class="title text-center mb-3">
                    <h2 class="fw-bolder text-primary">CẬP NHẬT TÀI KHOẢN</h2>
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-activity m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="text" name="fullname" value="${user.fullname}" class="form-control" id="floatingFullName" placeholder="fullName">
                        <label for="floatingFullName">Họ và tên</label>
                    </div>
                </div>
                  <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-activity m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="text" name="id" value="${user.id}" class="form-control" id="floatingFullName" placeholder="fullName">
                        <label for="floatingFullName">Tài khoản</label>
                    </div>
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0 " id="basic-addon1"><i class="fa-sharp fa-solid fa-lock text-primary"></i></span>
                    <div class="form-floating">
                        <input type="password" value="${user.password}" name="password" class="form-control" id="floatingPhone" placeholder="phone">
                        <label for="floatingPhone">Password</label>
                    </div>
                </div>
                <div class="input-group mb-3 px-5">
                    <span class="input-group-text border-0" id="basic-addon1"><i
                            class="bi bi-envelope-at-fill m-auto text-primary"></i></span>
                    <div class="form-floating">
                        <input type="email" name="email" value="${user.email}" class="form-control" id="floatingEmail" placeholder="email">
                        <label for="floatingEmail">Email</label>
                    </div>
                </div>
              
                <div class="input-group mb-3 px-5">
					<div class="form-group py-2">
						<div class="form-check form-check-inline p-1">Role</div>
						<div class="form-check form-check-inline">
							<input ${user.admin?'checked':''} name="admin" class="form-check-input" type="radio"
								id="inlineRadio1" value="true"> <label
								class="form-check-label" for="inlineRadio1">Admin</label>
						</div>
						<div class="form-check form-check-inline">
							<input ${user.admin?'':'checked'} name="admin" class="form-check-input" type="radio"
								id="inlineRadio2" value="false"> <label
								class="form-check-label" for="inlineRadio2">User</label>
						</div>
					</div>
				</div>
				<c:if test="${!empty message}">
					<div class="text-center mb-3 text-danger fw-bolder">${message}</div>
				</c:if>
                <div class="d-grid gap-2 d-md-flex justify-content-md-center mb-2">
                    <a href="">
                        <button formaction="${layout}/capnhat" style="width: 150px;" class="btn btn-light btn-outline-primary mx-4" >
                            Cập nhật
                        </button>
                    </a>
                    <a href="#!trangchu">
                        <button style="width: 150px;" class="btn btn-light btn-outline-primary mx-4">
                            Quay về
                        </button>
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>