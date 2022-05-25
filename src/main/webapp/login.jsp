<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html dir="rtl" lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">
<link href="images/favicon.png" rel="icon" />
<title>ورود</title>
<meta name="description" content="Login and Register Form Html Template">
<meta name="author" content="harnishdesign.net">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/all.min.css" />
<link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
<link id="color-switcher" type="text/css" rel="stylesheet" href="css/color-red.css" />
</head>
<body>
<div class="preloader preloader-dark">
  <div class="lds-ellipsis">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
  </div>
</div>
<div id="main-wrapper" class="oxyy-login-register">
  <div class="hero-wrap min-vh-100">
    <div class="hero-mask opacity-4 bg-secondary"></div>
    <div class="hero-bg hero-bg-scroll" style="background-image:url('img/login-bg-5.jpg');"></div>
    <div class="hero-content d-flex min-vh-100">
      <div class="container my-auto">
        <div class="row">
          <div class="col-md-9 col-lg-7 col-xl-5 mx-auto">
            <div class="hero-wrap rounded shadow-lg p-4 py-sm-5 px-sm-5 my-4">
              <div class="hero-mask opacity-9 bg-dark"></div>
              <div class="hero-content">
                <div class="logo mb-4"> <a class="d-flex justify-content-center" href="index.php" title="Oxyy"><img src="img/logo.png" alt="Oxyy"></a> </div>
                <form  class="form-dark" action="login-check.php" method="post">
                  <div class="form-group icon-group">
                    <input type="email" name="email" class="form-control"  required placeholder="آدرس ایمیل">
                    <span class="icon-inside"><i class="fas fa-envelope"></i></span> </div>
                  <div class="form-group icon-group">
                    <input type="password" name="password" class="form-control"  required placeholder="رمز عبور">
                    <span class="icon-inside"><i class="fas fa-lock"></i></span> </div>
                  <button class="btn btn-primary btn-block shadow-none mt-4 mb-3" type="submit">ورود</button>
                </form>
                <p class="text-2 text-muted text-center mb-0">حساب ندارید؟ <a class="btn-link text-light text-3" href="/register">ثبت نام</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.bundle.min.js"></script> 
<script src="js/switcher.min.js"></script> 
<script src="js/theme.js"></script>
</body>
</html>
