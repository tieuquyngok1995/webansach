<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<h2>Thêm Kho Mới</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>


		</ul>

		<div class="tab-content">
			<div id="admin" class="tab-pane fade in active">
				<!-- Nội dung trong tab admin -->
		<div class="listadmin">
			<form action="AdminCreatKho" method="post">
				<table class="table table-hover">

					<tr>
						<th>Mã Kho</th>
						<td><input type="text" name="maKho" value=""> <%
if (session.getAttribute("maKho_err") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("maKho_err") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Tên Kho</th>
						<td><input name="tenKho" type="text" value=""> <%
if (session.getAttribute("tenKho_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("tenKho_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Địa Chỉ</th>
						<td><input name="diaChi" type="text" value=""> <%
if (session.getAttribute("diaChi_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("diaChi_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Ngày Thuê</th>
						<td><input name="ngayThue" value="" type="text">
							<%
								if (session.getAttribute("ngayThue_error") != null) {
									out.print("<font color=\"red\">" + (String) request.getAttribute("ngayThue_error") + "</font>");
								}
							%></td>
					</tr>
				

					<tr>
						<th>Phí Thuê</th>
						<td><input name="phiThue" type="text" value=""> <%
if (session.getAttribute("phiThue_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("phiThue_error") + "</font>");
}
%></td>
									</tr>
									
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Thêm Kho">
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