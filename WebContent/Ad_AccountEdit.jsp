<%@page import="DAO.AccountDAO"%>
<%@page import="Model.Account"%>
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
		String Id = (String) session.getAttribute("getId");

		Account c = AccountDAO.lookingforUser(Id);
		if (c == null) {
			c = new Account();
		}

		//Bat Loi o Day
		String name = (String) session.getAttribute("name");
		if (name == null) {
			name = c.getAccountName();
		}
		String uname_err = (String) session.getAttribute("uname_err");
		if (uname_err == null) {
			uname_err = "";
		}

		String address = (String) session.getAttribute("address");
		if (address == null) {
			address = c.getAccountAddress();
		}
		String address_err = (String) session.getAttribute("address_err");
		if (address_err == null) {
			address_err = "";
		}

		String phone = (String) session.getAttribute("phone");
		if (phone == null) {
			phone = c.getAccountPhone();
		}
		String phone_err = (String) session.getAttribute("phone_err");
		if (phone_err == null) {
			phone_err = "";
		}
	%>
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
							<form action="<%=request.getContextPath()%>/AdminEditAccount">
								<table class="table table-hover">

									<tr>
										<th>STT</th>
										<td><%=c.getAccountID()%></td>
										<td><input type="hidden" name="id"
											value="<%=c.getAccountID()%>"></td>
									</tr>
									<tr>
										<th>Email</th>
										<td><%=c.getAccountEmail()%></td>
										<td></td>
									</tr>
									<tr>
										<th>Tên user</th>
										<td><input name="name" value=" <%=name%>"></td>
										<td><font color="red"><%=uname_err%></font></td>
									</tr>
									<tr>
										<th>Địa Chỉ</th>
										<td><input name="address" value=" <%=address%>"></td>
										<td><font color="red"><%=address_err%></font></td>
									</tr>
									<tr>
										<th>Số điện thoại</th>
										<td><input name="phone" value=" <%=phone%>"></td>
										<td><font color="red"><%=phone_err%></font></td>
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