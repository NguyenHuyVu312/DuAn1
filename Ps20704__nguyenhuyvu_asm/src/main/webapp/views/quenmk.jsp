	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /*CSS cho header*/
   
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
    }
    /* CSS cho boder login*/
    .card {
        border-radius: 5%;

    }
    /* CSS canh giữa cho textfield*/
    .login {
        display: inline-block;
        position: relative;
        left: 50%;
        transform: translateX(-50%);
    }

   
</style>
<body>
	<c:url var="layout" value="/views"></c:url>

 <!--    <div class="card col-sm-5 col-9 mt-5 m-auto border-0 shadow-lg ">
        <div class="card-body">
            <div class="title text-center mb-3">
                <h2 class="fw-bolder">QUÊN MẬT KHẨU</h2>
            </div>
            <form>
                <div class="login col-10 mb-4">
                    <label class="visually-hidden" for="autoSizingInputGroup">Tài khoản</label>
                    <div class="input-group">
                        <div class="input-group-text"><i class="bi bi-person-fill m-auto h4"></i></div>
                        <input type="text" name="user" class="form-control" id="autoSizingInputGroup" placeholder="Tài khoản">
                    </div>
                </div>
                <div class="login col-10 mb-4">
                    <label class="visually-hidden" for="exampleInputEmail1">Email</label>
                    <div class="input-group">
                        <div class="input-group-text"><i class="bi bi-envelope-at-fill m-auto h4"></i></i></div>
                        <input type="email"  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
                    </div>
                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-center">
                    <a href="">
                        <button style="width: 150px;" class="btn btn-light btn-outline-primary mx-4" type="submit">
                            Xác nhận
                        </button>
                    </a>
                    <a href="#!dangnhap">
                        <button style="width: 150px;" class="btn btn-light btn-outline-primary mx-4 " type="button">
                            Quay về
                        </button>
                    </a>
                </div>
                <div class="forgot text-center mt-4">
                    Bạn chưa có tài khoản ?<a href="#!dangky">Đăng ký tại đây</a>
                </div>
            </form>
        </div>
    </div> -->
 <form id="register-form" role="form" class="form" method="post" 
 action="mymail_fp.jsp">
    <h3>Enter Your Email Below</h3>
   <input id="email" name="email" placeholder="Email address" class="form- 
   control"  type="email" required autofocus>
  <input name="recover-submit" class="btn btn-lg btn-primary btn-block" 
   value="Get Password" type="submit">
</form>
</body>
</html>