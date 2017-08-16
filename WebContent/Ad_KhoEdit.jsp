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
		String maKho = (String) session.getAttribute("getmaKho");

		Kho c = KhoDAO.lookingforKho(maKho);
		if (c == null) {

		}

		//Bat Loi o Day
		String tenKho = (String) session.getAttribute("tenKho");
		if (tenKho == null) {
			tenKho = c.getTenkho();
		}

		String tenKho_err = (String) session.getAttribute("tenKho_err");
		if (tenKho_err == null) {
			tenKho_err = "";
		}

		String diaChi = (String) session.getAttribute("diaChi");
		if (diaChi == null) {
			diaChi = c.getDiachi();
		}
		
		String diaChi_err = (String) session.getAttribute("diaChi_err");
		if (diaChi_err == null) {
			diaChi_err = "";
		}
		
		String ngayThue = (String) session.getAttribute("ngayThue");
		if (ngayThue == null) {
			ngayThue = c.getNgaythue();
		}
		
		String ngayThue_err = (String) session.getAttribute("ngayThue_err");
		if (ngayThue_err == null) {
			ngayThue_err = "";
		}
		
		String phiThue = (String) session.getAttribute("phiThue");
		if (phiThue == null) {
			phiThue = c.getPhithue();
		}
		
		String phiThue_err = (String) session.getAttribute("phiThue_err");
		if (phiThue_err == null) {
			phiThue_err = "";
		}
	%>
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Danh sách kho bãi</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Kho
							bãi</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="<%=request.getContextPath()%>/AdminEditKho">
								<table class="table table-hover">

									<tr>
										<th>Mã Kho</th>
										<td><%=c.getMakho()%></td>
										<td><input type="hidden" name="maKho"
											value="<%=c.getMakho()%>"></td>
									</tr>
									<tr>
										<th>Tên Kho</th>
										<td><input name="tenKho" value="<%=tenKho%>"></td>
										<td><font color="red"><%=tenKho_err%></font></td>
									</tr>
									<tr>
										<th>Địa Chỉ</th>
										<td><input name="diaChi" value=" <%=diaChi%>"></td>
										<td><font color="red"><%=diaChi_err%></font></td> 
									</tr>
									<tr>
										<th>Ngày Thuê</th>
										<td><input name="ngayThue" value=" <%=ngayThue%>"></td>
										<td><font color="red"><%=ngayThue_err%></font></td>
									</tr>
									<tr>
										<th>Phí Thuê</th>
										<td><input name="phiThue" value=" <%=phiThue%>"></td>
										<td><font color="red"><%=phiThue_err%></font></td>
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