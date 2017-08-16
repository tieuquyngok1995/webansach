<%@page import="DAO.NhaSXDAO"%>
<%@page import="Model.NhaSX"%>
<%@page import="DAO.KhoDAO"%>
<%@page import="Model.Kho"%>
<%@page import="java.util.ArrayList"%>
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
	<%
		String maNhaSX = (String) session.getAttribute("getmaNhaSX");

		NhaSX c = NhaSXDAO.lookingforKho(maNhaSX);
		if (c == null) {

		}

		//Bat Loi o Day
		String tenNhaSX = (String) session.getAttribute("tenNhaSX");
		if (tenNhaSX == null) {
			tenNhaSX = c.getTenNhaSX();
		}

		String tenNhaSX_err = (String) session.getAttribute("tenNhaSX_err");
		if (tenNhaSX_err == null) {
			tenNhaSX_err = "";
		}

		String diaChiNhaSX = (String) session.getAttribute("diaChiNhaSX");
		if (diaChiNhaSX == null) {
			diaChiNhaSX = c.getDiaChiNhaSX();
		}
		
		String diaChiNhaSX_err = (String) session.getAttribute("diaChiNhaSX_err");
		if (diaChiNhaSX_err == null) {
			diaChiNhaSX_err = "";
		}
		
		String ngayKHD = (String) session.getAttribute("ngayKHD");
		if (ngayKHD == null) {
			ngayKHD = c.getNgayKHD();
		}
		
		String ngayKHD_err = (String) session.getAttribute("ngayKHD_err");
		if (ngayKHD_err == null) {
			ngayKHD_err = "";
		}
		
		String matHang = (String) session.getAttribute("matHang");
		if (matHang == null) {
			matHang = c.getMatHang();
		}
		
		String matHang_err = (String) session.getAttribute("matHang_err");
		if (matHang_err == null) {
			matHang_err = "";
		}
	%>
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Chỉnh sửa nhà sản xuất</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Nhà Sản Xuất</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="<%=request.getContextPath()%>/AdminEditNhaSX">
								<table class="table table-hover">

									<tr>
										<th>Mã Nhà Sản Xuất</th>
										<td><%=c.getMaNhaSX()%></td>
										<td><input type="hidden" name="maNhaSX"
											value="<%=c.getMaNhaSX()%>"></td>
									</tr>
									<tr>
										<th>Tên Nhà Sản Xuất</th>
										<td><input name="tenNhaSX" value="<%=tenNhaSX%>"></td>
										<td><font color="red"><%=tenNhaSX_err%></font></td>
									</tr>
									<tr>
										<th>Địa Chỉ Nhà Sản Xuất</th>
										<td><input name="diaChiNhaSX" value=" <%=diaChiNhaSX%>"></td>
										<td><font color="red"><%=diaChiNhaSX_err%></font></td> 
									</tr>
									<tr>
										<th>Ngày Ký Hợp Đồng</th>
										<td><input name="ngayKHD" value=" <%=ngayKHD%>"></td>
										<td><font color="red"><%=ngayKHD_err%></font></td>
									</tr>
									<tr>
										<th>Mặt Hàng</th>
										<td><input name="matHang" value=" <%=matHang%>"></td>
										<td><font color="red"><%=matHang_err%></font></td>
									</tr>
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Sửa">
								</div>
							</form>
							<br>
							<div align="center">
								<a href="javascript:history.go(-1)" class="btn btn-primary">Quay
									Lại</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>