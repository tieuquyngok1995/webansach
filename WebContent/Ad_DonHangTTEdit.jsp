<%@page import="Model.DonHang2"%>
<%@page import="DAO.DonHangDAO2"%>
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
		String maDH = (String) session.getAttribute("getMaDH");

		DonHang2 c = DonHangDAO2.lookingforDonHang(maDH);
		if (c == null) {

		}

		//Bat Loi o Day
		String tenTK = (String) session.getAttribute("tenTK");
		if (tenTK == null) {
			tenTK = c.getTenTK();
		}

		String tenTK_err = (String) session.getAttribute("tenTK_err");
		if (tenTK_err == null) {
			tenTK_err = "";
		}

		String sanPham = (String) session.getAttribute("sanPham");
		if (sanPham == null) {
			sanPham = c.getSanPham();
		}
		
		String sanPham_err = (String) session.getAttribute("sanPham_err");
		if (sanPham_err == null) {
			sanPham_err = "";
		}
		
		String soLuong = (String) session.getAttribute("soLuong");
		if (soLuong == null) {
			soLuong = c.getSoLuong();
		}
		
		String soLuong_err = (String) session.getAttribute("soLuong_err");
		if (soLuong_err == null) {
			soLuong_err = "";
		}
		
		String donGia = (String) session.getAttribute("donGia");
		if (donGia == null) {
			donGia = c.getDonGia();
		}
		
		String donGia_err = (String) session.getAttribute("donGia_err");
		if (donGia_err == null) {
			donGia_err = "";
		}
		String ngayMua = (String) session.getAttribute("ngayMua");
		if (ngayMua == null) {
			ngayMua = c.getNgayMua();
		}
		
		String ngayMua_err = (String) session.getAttribute("ngayMua_err");
		if (ngayMua_err == null) {
			ngayMua_err = "";
		}
	%>
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Chỉnh Sửa Đơn Hàng</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Đơn Hàng</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="<%=request.getContextPath()%>/AdminEditDonHang2">
								<table class="table table-hover">

									<tr>
										<th>Mã Đơn Hàng</th>
										<td><%=c.getMaDH()%></td>
										<td><input type="hidden" name="maDH"
											value="<%=c.getMaDH()%>"></td>
									</tr>
									<tr>
										<th>Tên Tài Khoản</th>
										<td><input name="tenTK" value="<%=tenTK%>"></td>
										<td><font color="red"><%=tenTK_err%></font></td>
									</tr>
									<tr>
										<th>Sản Phẩm</th>
										<td><input name="sanPham" value=" <%=sanPham%>"></td>
										<td><font color="red"><%=sanPham_err%></font></td> 
									</tr>
									<tr>
										<th>Số Lượng</th>
										<td><input name="soLuong" value=" <%=soLuong%>"></td>
										<td><font color="red"><%=soLuong_err%></font></td>
									</tr>
									<tr>
										<th>Đơn Giá</th>
										<td><input name="donGia" value=" <%=donGia%>"></td>
										<td><font color="red"><%=donGia_err%></font></td>
									</tr>
									<tr>
										<th>Ngày Mua</th>
										<td><input name="ngayMua" value=" <%=ngayMua%>"></td>
										<td><font color="red"><%=ngayMua_err%></font></td>
									</tr>
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Sửa Đơn Hàng">
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