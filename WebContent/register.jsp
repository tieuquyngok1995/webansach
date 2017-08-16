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
<body>
<div id="wrapper">
	<%@ include file="header.jsp"%>

<div id="content">
<div id="reister-box" class="register1">
	
	<p>Đăng Ký</b></p>		
	<form method="post" action="checkRegister" class="register-content1">
		<label class="user">
		<% 			if (request.getAttribute("uname_error") != null) {
				out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("uname_error")
 				+ "</font>");}%>
			<div class="all-input">
			<img class="icon-user" src="images/user-icon.png" width="24" height="24" />
			<input class="input1" name="uname" type="text" placeholder="Username"/> </div>
<%			if (request.getAttribute("email_error") != null) {
 				out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("email_error")
 				+ "</font>");}%>
			<div class="all-input">	
 			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="email" type="text" placeholder="Email"/></div>
<%			if (request.getAttribute("pass_error") != null) {
 			out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("pass_error")
 				+ "</font>");}%>
			<div class="all-input">
			<img class="icon-user" src="images/pass-icon.png" width="24" height="24" />
			<input class="input1" name="pass" type="password" placeholder="Password"/></div>
<%			if (request.getAttribute("re_pass_error") != null) {
 			out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("re_pass_error")
 				+ "</font>");}%>
			<div class="all-input">
			<img class="icon-user" src="images/pass-icon.png" width="24" height="24" />
			<input class="input1" name="repass" type="password" placeholder="RePassword"/></div>
<%
 	if (request.getAttribute("number_error") != null) {
 		out.print("<font color=\"red\">" + (String) request.getAttribute("number_error") + "</font>");
 	}
 %> 
			<div class="all-input">
			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="number" type="text" placeholder="Số Điện Thoại"/> </div>
<%
 	if (request.getAttribute("address_error") != null) {
 		out.print("<font color=\"red\">" + (String) request.getAttribute("address_error") + "</font>");
 	}
 %>					
			<div class="all-input">
			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="address" type="text" placeholder="Địa Chỉ"/> </div> 
			
			<div class="all-input">
			<input class="input2" type="radio" name="gioiTinh" value="Nam" checked />Nam
			<input class="input2" type="radio" name="gioiTinh" value="Nu" /> Nữ</div>
			
			<div class="all-input">
			<img class="icon-user" src="images/lock-icon.png" width="24" height="24" />
			<input class="input1" type="text" class="input_text" name="cauhoi1" disabled="disabled" id="cau_hoi1"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/key-icon.png" width="24" height="24" />
			<input class="input1" type="text" class="input_text" name="cautraloi1" id="tra_loi1"/></div>
		</label>
		<br>
		<label class="submit">
		<input class="resight-but" name="" type="submit" value="Đăng Ký" />
		<a class="login-pas"href="#">Điều khoản dịch vụ.</a>
		</label>
			
	</form>
</div>
</div>
	<%@ include file="footer.jsp"%>
</div>
</body>
</html>