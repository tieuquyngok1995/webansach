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
		<h2>Thêm Nhà Sản Xuất Mới</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>


		</ul>

		<div class="tab-content">
			<div id="admin" class="tab-pane fade in active">
				<!-- Nội dung trong tab admin -->
		<div class="listadmin">
			<form action="AdminCreatNhaSX" method="post">
				<table class="table table-hover">

					<tr>
						<th>Mã Nhà Sản Xuất</th>
						<td><input type="text" name="maNhaSX" value=""> <%
if (session.getAttribute("maNhaSX_err") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("maNhaSX_err") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Tên Nhà Sản Xuất</th>
						<td><input name="tenNhaSX" type="text" value=""> <%
if (session.getAttribute("tenNhaSX_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("tenNhaSX_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Địa Chỉ Nhà Sản Xuất</th>
						<td><input name="diaChiNhaSX" type="text" value=""> <%
if (session.getAttribute("diaChiNhaSX_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("diaChiNhaSX_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Ngày Ký Hợp Đồng</th>
						<td><input name="ngayKHD" value="" type="text">
							<%
								if (session.getAttribute("ngayKHD_error") != null) {
									out.print("<font color=\"red\">" + (String) request.getAttribute("ngayKHD_error") + "</font>");
								}
							%></td>
					</tr>
				

					<tr>
						<th>Mặt Hàng Sản Xuất</th>
						
						<td><input name="matHang" type="text" value=""> <%
if (session.getAttribute("matHang_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("matHang_error") + "</font>");
}
%></td>
									</tr>
									
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Thêm Nhà Sản Xuất">
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