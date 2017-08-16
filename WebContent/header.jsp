<%@page import="DAO.FuntionLT"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<%
		String loginemail = (String) session.getAttribute("email");
		if (loginemail == null) {
			loginemail = "";
		}
	%>
	<div id="login-box" class="login">
		<a href="#" class="img-close"><input name="" type="image"
			src="images/windowClose.png" width="32" height="32" /></a>
		<p>
			<b>Đăng Nhập</b>
		</p>

		<form method="post" class="login-content" action="checkLogin">
			<label class="user"> <div class="all-input">
				<img class="icon-user" src="images/user-icon.png" width="24" height="24" />
				<input class="input1" name="emaillg"  type="text" placeholder="Username"/></div> 
				
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
		</label> </label>
		</form>
	</div>
	<div id="reister-box" class="register">
		<a href="#" class="img-close"><input name="" type="image"
			src="images/windowClose.png" width="32" height="32" /></a>
		<p>
			Đăng Ký</b>
		</p>
		<form method='post' action="checkRegister" class="register-content">
			<label class="user">
			<div class="all-input">
			<img class="icon-user" src="images/user-icon.png" width="24" height="24" />
			<input class="input1" name="uname" type="text" placeholder="Username"/> </div>
			
			<div class="all-input">	
 			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="email" type="text" placeholder="Email"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/pass-icon.png" width="24" height="24" />
			<input class="input1" name="pass" type="password" placeholder="Password"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/pass-icon.png" width="24" height="24" />
			<input class="input1" name="repass" type="password" placeholder="RePassword"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="number" type="text" placeholder="Số Điện Thoại"/> </div>
			
			<div class="all-input">
			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="address" type="text" placeholder="Địa Chỉ"/> </div> 
			
			<div class="all-input">
			<input class="input2" type="radio" name="gioiTinh" value="Nam" checked />Nam
			<input class="input2" type="radio" name="gioiTinh" value="Nu" /> Nữ</div>
			
			<div class="all-input">
			<img class="icon-user" src="images/lock-icon.png" width="24" height="24" />
			<input class="input1" type="text" class="input_text" name="cauhoi1" disabled="disabled" id="cau_hoi"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/key-icon.png" width="24" height="24" />
			<input class="input1" type="text" class="input_text" name="cautraloi1" id="tra_loi"/></div>
		</label>
		<br>
		<label class="submit">
		<input class="resight-but" name="" type="submit" value="Đăng Ký" />
		<a class="login-pas"href="#">Điều khoản dịch vụ.</a>
		</label>
		</form>
	</div>
	<nav id="fixNav"> <a href="index.jsp"><img height="45"
		width="200" src="images/logo.png" alt="Sản phẩm 1"></a>
	<div class="fix-menu">
		<div class="menu-product">
			<a href="laptop.jsp"><input class="link2" height="45" width="45"
				src="images/laptop.png" type="image" /></a> <a href="mayban.jsp"><input
				class="link2" height="45" width="45" src="images/mayban.png"
				type="image" /></a> <a href="linhkien.jsp"><input class="link2" height="45"
				width="45" src="images/linhkien.png" type="image" /></a> <a href="phukien.jsp"><input
				class="link2" height="45" width="45" src="images/phukien.png"
				type="image" /></a> <a href="thietbiluutru.jsp"><input class="link2" height="45"
				width="45" src="images/tbluutru.png" type="image" /></a> <a href="manhinh.jsp"><input
				class="link2" height="45" width="45" src="images/manhinh.png"
				type="image" /></a>
		</div>
	</div>
	<%
		if (session.getAttribute("email") == null) {
	%>
	<div class="fix-menu1">
		<nav class="menu-top"> <a class="link" href="giohang.jsp">Giỏ Hàng</a> <a
			class="link" href="#">Yêu Thích</a> <a class="link" href="help.jsp">Trợ
			Giúp</a> <a class="linkbox" href="#reister-box">Đăng ký</a> <a
			class="linkbox" href="#login-box">Đăng nhập</a> </nav>
	</div>
	<%
		} else {
	%>
	<div class="fix-menu1">
		<nav class="menu-top"> <a class="link" href="giohang.jsp">Giỏ Hàng</a> <a
			class="link" href="#">Yêu Thích</a> <a class="link" href="help.jsp">Trợ
			Giúp</a> <a class="linkbox" href="#">Xin chào: <%=loginemail%></a> <a 
			href="<%=response.encodeRedirectURL("Logout")%>" style="color:white;"> Thoát </a></nav>
		<%
			}
		%>
	</div>
	</nav>

		<div id="header_top">
			<div id="header_logo">
				<a href="index.jsp"><img height="45" width="200"
					src="images/logo.png" alt="Sản phẩm 1"></a>
			</div>

			<div class="header-title">
				<p>Luôn Mang Lại Cho Bạn Sự</p>
				<ul>
					<li>Uy Tín</li>
					<li>Chất Lượng</li>
					<li>Hiệu Quả</li>
					<li>Nhanh Chóng</li>
					<li>An Toàn</li>
				</ul>
			</div>
			<%
				if (session.getAttribute("email") == null) {
			%>
			<nav class="menu-top"> <a class="link" href="giohang.jsp">Giỏ Hàng</a> <a
				class="link" href="#">Yêu Thích</a> <a class="link" href="help.jsp">Trợ
				Giúp</a> <a class="linkbox" href="#reister-box">Đăng ký</a> <a
				class="linkbox" href="#login-box">Đăng nhập</a> </nav>


			<%
				} else {
			%>
			<nav class="menu-top"> <a class="link" href="giohang.jsp">Giỏ Hàng</a> <a
				class="link" href="#">Yêu Thích</a> <a class="link" href="help.jsp">Trợ
				Giúp</a> <a class="link" href="#">Xin chào: <%=loginemail%></a> <a
				href="<%=response.encodeRedirectURL("Logout")%>" style="color:white;"> Thoát </a> </nav>
			<%
				}
			%>

		</div>


</body>
</html>