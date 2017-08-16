<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<h2>Danh sách sản phẩm</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Sản
							phẩm</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="AdminCreateProduct" method="post">
								<table class="table table-hover">

									<tr>
										<th>Id sản phẩm</th>
										<td><input type="text" name="idSP" value=""> <%
 	if (request.getAttribute("idSP_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("idSP_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Tên sản phẩm</th>
										<td><input name="tenSP" type="text" value=""> <%
 	if (request.getAttribute("tenSP_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("tenSP_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>IDCTSP</th>
										<td><input name="idCTSP" type="text" value=""> <%
 	if (request.getAttribute("idCTSP_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("idCTSP_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>Giá</th>
										<td><input name="gia" value="" type="text" value="">
											<%
												if (request.getAttribute("gia_error") != null) {
													out.print("<font color=\"red\">"
															+ (String) request.getAttribute("gia_error")
															+ "</font>");
												}
											%></td>
									</tr>

									<tr>
										<th>Số lượng</th>
										<td><input name="soLuong" type="text" value=""> <%
 	if (request.getAttribute("soLuong_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("soLuong_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
									<tr>
										<th>IDLoạiSP</th>
										<td><input name="idLoaiSP" type="text"> <%
 	if (request.getAttribute("idLoaiSP_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("idLoaiSP_error")
 				+ "</font>");
 	}
 %></td>
									</tr>

									<tr>
										<th>Img</th>
										<td><input name="img" type="text" value=""> <%
 	if (request.getAttribute("img_error") != null) {
 		out.print("<font color=\"red\">"
 				+ (String) request.getAttribute("img_error")
 				+ "</font>");
 	}
 %></td>
									</tr>
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Thêm sản phẩm">
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