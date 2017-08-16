<%@page import="DAO.KhoDAO"%>
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
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Danh sách kho đang sử dụng</h2>
				<ul class="nav nav-tabs">

					<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>
					<div align="right">

						<a href="AD_CreateKho.jsp"> <input type="submit" class="btn btn-info"
							value="Thêm kho mới">
						</a>

					</div>

				</ul>

				<div class="tab-content">

					<div id="admin" class="tab-pane fade in active">

						<!-- Nội dung trong tab admin -->
						<div class="listadmin">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Mã kho</th>
										<th>Tên kho</th>
										<th>Địa chỉ</th>
										<th>Ngày thuê</th>
										<th>Phí thuê</th>
									
									</tr>

								</thead>
								<tbody>
									<%
										for (int i = 0; i < KhoDAO.getListKho().size(); i++) {
											String maKho = KhoDAO.getListKho().get(i).getMakho();
											 String delete = "AdminDeleteKho?maKho=" + maKho;
											String edit = "AdminInfoKho?maKho=" + maKho; 
									%><tr>
										<td><%=maKho%></td>
										<td><%=KhoDAO.getListKho().get(i).getTenkho()%></td>
										<td><%=KhoDAO.getListKho().get(i).getDiachi()%></td>
										<td><%=KhoDAO.getListKho().get(i).getNgaythue()%></td>
										<td><%=KhoDAO.getListKho().get(i).getPhithue()%></td>
										
									  <td><a class="btn btn-info" type="submit"
											href="<%=response.encodeRedirectURL(edit)%>"><img
												src="Img/Ad.Img/ad_iconsetting.png"
												style="height: 20px; width: 20px;"></a></td> 
										<td><a onclick="return confirmAction()" class="btn btn-danger" type="submit"
											href="<%=response.encodeRedirectURL(delete)%>"><img
												src="Img/Ad.Img/ad_icondelete.png"
												style="height: 20px; width: 20px;"></a></td>  
									</tr>
												<SCRIPT LANGUAGE="JavaScript">
											    function confirmAction() {
											      return confirm("Bạn có muốn tiếp tục XÓA mục này?")
											    }
											</SCRIPT>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
</body>
</html>