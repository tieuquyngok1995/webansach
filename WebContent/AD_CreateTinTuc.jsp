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
		<h2>Thêm Tin Tức Mới</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>


		</ul>

		<div class="tab-content">
			<div id="admin" class="tab-pane fade in active">
				<!-- Nội dung trong tab admin -->
		<div class="listadmin">
			<form action="AdminCreatTinTuc" method="post">
				<table class="table table-hover">

					<tr>
						<th>STT</th>
						<td><input type="text" name="STT" value=""> <%
if (session.getAttribute("STT_err") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("STT_err") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Tiêu Đề</th>
						<td><input name=tieuDe type="text" value=""> <%
if (session.getAttribute("tieuDe_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("tieuDe_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Nội Dung Tóm Tắt</th>
						<td><input name="nDTT" type="text" value=""> <%
if (session.getAttribute("nDTT_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("nDTT_error") + "</font>");
}
%></td>
					</tr>
					<tr>
						<th>Nội Dung Chính</th>
						<td><input name="nDC" value="" type="text">
							<%
								if (session.getAttribute("nDC_error") != null) {
									out.print("<font color=\"red\">" + (String) request.getAttribute("nDC_error") + "</font>");
								}
							%></td>
					</tr>
				

					<tr>
						<th>Ngày Đăng</th>
						<td><input name="ngayDang" type="text" value=""> <%
if (session.getAttribute("ngayDang_error") != null) {
	out.print("<font color=\"red\">" + (String) request.getAttribute("ngayDang_error") + "</font>");
}
%></td>
									</tr>
									
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Thêm Tin Tức">
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