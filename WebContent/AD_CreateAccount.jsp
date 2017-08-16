<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="DAO.AccountDAO"%>
<%@page import="Model.Account"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%@include file="Ad_Header.jsp"%>
	<div class="ts-main-content">
		<%@include file="Ad_LeftMenu.jsp"%>

	</div>

	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Danh sách nhân viên</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="AdminCreatAccount" method="post">
								<table class="table table-hover">

									<tr>
										<th>Id</th>
										<td><input type="text" name="id" value=""> <%
 	if (session.getAttribute("id_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("id_error") + "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Tên user</th>
										<td><input name="uname" type="text" value=""> <%
 	if (request.getAttribute("uname_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("uname_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Email</th>
										<td><input name="email" type="text" value=""> <%
 	if (request.getAttribute("email_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("email_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Password</th>
										<td><input name="pass" value="" type="password">
											<%
												if (request.getAttribute("password_error") != null) {
													out.print("<font color=\"red\">"
															+ (String) request.getAttribute("password_error")
															+ "</font>");
												}
											%></td>
									</tr>
									<tr>
										<th>Giới tính</th>
										<td><input checked="checked" type="radio" name="gioiTinh"
											value="Nam">Nam <input type="radio" name="gioiTinh"
											value="Nữ"> Nữ</td>
									</tr>
									<tr>
										<th>Số điện thoại</th>
										<td><input name="phone" type="number" value=""> <%
 	if (request.getAttribute("phone_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("phone_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Địa chỉ</th>
										<td><input name="address" type="text"> <%
 	if (request.getAttribute("address_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("address_error")
 				+ "</font>");
 	}
 %></td>
									</tr>

									<tr>
										<th>Quyền</th>
										<td><input name="quyen" type="number" value="3">
											<%
												if (request.getAttribute("quyen_error") != null) {
													out.print("<font color=\"red\">"
															+ (String) request.getAttribute("quyen_error")
															+ "</font>");
												}
											%></td>
									</tr>
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Thêm user">
								</div>
							</form>
							<br>
							<div align="center">
								<a href="javascript:history.go(-1)" class="btn btn-primary">Quay
									lại </a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>