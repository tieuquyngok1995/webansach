<%@page import="DAO.ProductDAO"%>
<%@page import="Model.SanPham"%>
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
		String idSP = (String) session.getAttribute("getIdSP");
		SanPham sp = ProductDAO.lookingforSanPham(idSP);
		if (sp == null) {
			sp = new SanPham();
		}
		//Bat Loi o Day
		String tenSP = (String) session.getAttribute("tenSP");
		if (tenSP == null) {
			tenSP = sp.getTenSP();
		}
		String tenSP_err = (String) session.getAttribute("tenSP_err");
		if (tenSP_err == null) {
			tenSP_err = "";
		}

		/* String giaSS = (String) session.getAttribute("gia");
		if (giaSS == null) {
		giaSS = " " + sp.getGia();
		}
		*/
		String gia_err = (String) session.getAttribute("gia_err");
		if (gia_err == null) {
			gia_err = "";
		}
		/* 	String soLuongSS = (String) session.getAttribute("soLuong");
			if (soLuongSS == null) {
				soLuongSS = " " + sp.getSoLuong();
			} */
		String soLuong_err = (String) session.getAttribute("soluong_err");
		{
			if (soLuong_err == null) {
				soLuong_err = "";
			}
		}
		String img = (String) session.getAttribute("img");
		if (img == null) {
			img = sp.getImg();
		}

		String img_err = (String) session.getAttribute("img_err");
		{
			if (img_err == null) {
				img_err = "";
			}
		}
		String idCTSP = (String) session.getAttribute("idCTSP");
		if (idCTSP == null) {
			idCTSP = sp.getIdCTSP();
		}
		String idCTSP_err = (String) session.getAttribute("idCTSP_err");
		{
			if (idCTSP_err == null) {
				idCTSP_err = "";
			}
		}
		String idLoaiSP = (String) session.getAttribute("idLoaiSP");
		if (idLoaiSP == null) {
			idLoaiSP = sp.getIdLoaiSP();
		}
		String idLoaiSP_err = (String) session.getAttribute("idLoaiSP_err");
		{
			if (idLoaiSP_err == null) {
				idLoaiSP_err = "";
			}
		}
	%>

	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Danh sách sản phẩm</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="">Sản phẩm</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="<%=request.getContextPath()%>/AdminEditProduct">
								<table class="table table-hover">

									<tr>
										<th>ID-SảnPhẩm</th>
										<td><%=sp.getIdSP()%></td>
										<td><input type="hidden" name="idSP"
											value="<%=sp.getIdSP()%>"></td>
									</tr>
									<tr>
										<th>Tên sản phẩm</th>

										<td><input name="tenSP" value="<%=tenSP%>"></td>
										<td><font color="red"><%=tenSP_err%></font></td>

									</tr>
									<tr>
										<th>IDCTSP</th>
										<td><input name="idCTSP" value=" <%=idCTSP%>"></td>
										<td><font color="red"><%=idCTSP_err%></font></td>
									</tr>
									<tr>
										<th>Giá</th>
										<td><input name="gia" value="<%=sp.getGia()%>"></td>
										<%-- <td><font color="red"><%=gia_err%></font></td> --%>
									</tr>
									<tr>
										<th>Số lượng</th>
										<td><input name="soLuong" value="<%=sp.getSoLuong()%>"></td>
										<%-- <td><font color="red"><%=soLuong_err%></font></td> --%>
									</tr>
									<tr>
										<th>IDLoạiSP</th>
										<td><input name="idLoaiSP" value="<%=idLoaiSP%>"></td>
										<td><font color="red"> <%=sp.getIdLoaiSP()%></font></td>
									</tr>
									<tr>
										<th>Img</th>
										<td><input name="img" value="<%=img%>"></td>
										<td><font color="red"><%=img_err%></font></td>
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