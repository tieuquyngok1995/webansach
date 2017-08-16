<%@page import="DAO.TinTucDAO"%>
<%@page import="Model.TinTuc"%>
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
		String STT = (String) session.getAttribute("getSTT");

		TinTuc c = TinTucDAO.lookingforTinTuc(STT);
		if (c == null) {

		}

		//Bat Loi o Day
		String tieuDe = (String) session.getAttribute("tieuDe");
		if (tieuDe == null) {
			tieuDe = c.getTieuDe();
		}

		String tieuDe_err = (String) session.getAttribute("tieuDe_err");
		if (tieuDe_err == null) {
			tieuDe_err = "";
		}

		String nDTT = (String) session.getAttribute("nDTT");
		if (nDTT == null) {
			nDTT = c.getnDTT();
		}
		
		String nDTT_err = (String) session.getAttribute("nDTT_err");
		if (nDTT_err == null) {
			nDTT_err = "";
		}
		
		String nDC = (String) session.getAttribute("nDC");
		if (nDC == null) {
			nDC = c.getnDC();
		}
		
		String nDC_err = (String) session.getAttribute("nDC_err");
		if (nDC_err == null) {
			nDC_err = "";
		}
		
		String ngayDang = (String) session.getAttribute("ngayDang");
		if (ngayDang == null) {
			ngayDang = c.getNgayDang();
		}
		
		String ngayDang_err = (String) session.getAttribute("ngayDang_err");
		if (ngayDang_err == null) {
			ngayDang_err = "";
		}
	%>
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Chỉnh Sửa Tin Tức</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#admin">Tin Tức</a></li>


				</ul>

				<div class="tab-content">
					<div id="admin" class="tab-pane fade in active">
						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<form action="<%=request.getContextPath()%>/AdminEditTinTuc">
								<table class="table table-hover">

									<tr>
										<th>STT</th>
										<td><%=c.getSTT()%></td>
										<td><input type="hidden" name="STT"
											value="<%=c.getSTT()%>"></td>
									</tr>
									<tr>
										<th>Tiêu Đề</th>
										<td><input name="tieuDe" value="<%=tieuDe%>"></td>
										<td><font color="red"><%=tieuDe_err%></font></td>
									</tr>
									<tr>
										<th>Nội Dung Tóm Tắt</th>
										<td><input name="nDTT" value=" <%=nDTT%>"></td>
										<td><font color="red"><%=nDTT_err%></font></td> 
									</tr>
									<tr>
										<th>Nội Dung Chính</th>
										<td><input name="nDC" value=" <%=nDC%>"></td>
										<td><font color="red"><%=nDC_err%></font></td>
									</tr>
									<tr>
										<th>Ngày Đăng</th>
										<td><input name="ngayDang" value=" <%=ngayDang%>"></td>
										<td><font color="red"><%=ngayDang_err%></font></td>
									</tr>
								</table>
								<div align="center">
									<input class="btn btn-info" type="submit" value="Sửa Tin Tức">
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