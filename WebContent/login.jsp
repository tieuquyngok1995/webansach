<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Đăng nhập</title>
<link rel="stylesheet" href="css/index.css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<!-- script cho from dang nhap va bat from -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="shortcut icon" href="images/logo1.png" />
</head>
<div id="fb-root"></div>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=354411364926070";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<body>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '354411364926070',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

<div id="wrapper">
	<%@ include file="header.jsp"%>

<div id="content">
	<div id="login-box" class="login1">
	<p><b>Đăng Nhập</b></p>	
		<form  form method="post" action="checkLogin" class="login-content">
		<label class="user">
<%
if (request.getAttribute("mg_err") != null) {
	out.print("<font color=\"red\">"
			+ (String) request.getAttribute("mg_err") + "</font>");
}
%>		
<%
	if (request.getAttribute("email_error_lg") != null) {
		out.print("<font color=\"red\">" + (String) request.getAttribute("email_error_lg") + "</font>");
	}
%>
			<div class="all-input">
			<img class="icon-user" src="images/user-icon.png" width="24" height="24" />
			<input class="input1" name="emaillg"  type="text" placeholder="Username"/></div> 
<%
if (request.getAttribute("pass_error_lg") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("pass_error_lg") + "</font>");
}
%>
			<div class="all-input">
			<img class="icon-user" src="images/pass-icon.png" width="24" height="24" />
			<input class="input1" name="passlg" type="password" placeholder="Password"/></div>

		</label>
		<br>
		<label class="submit">
		<input class="login-but" name="" type="submit" value="Đăng Nhập" />
		<a class="login-pas"href="#">Quên Mật Khẩu?</a>
		<img class="icon-fb" src="images/fb-icon.png" width="32" height="32" />
		<a class="login-facebook" href="#"><div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div></a>
		<img class="icon-gg" src="images/gg-icon.png" width="32" height="32" />
		<a class="login-google" href="#">Login Google</a>
		</label>
		<label>
			
		</label>
	</form> 

</div> 

</div>
	<%@ include file="footer.jsp"%>
</div>
</body>
</html>