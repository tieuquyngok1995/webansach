<%@page import="DAO.TinTucDAO"%>
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
				<h2>Danh Mục Tin Tức</h2>
				<ul class="nav nav-tabs">

					<li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>
					<div align="right">

						<a href="AD_CreateTinTuc.jsp"> <input type="submit" class="btn btn-info"
							value="Thêm Tin Mới">
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
										<th>STT</th>
										<th>Tiêu Đề </th>
										<th>Nội Dung Tóm Tắt</th>
										<th>Nội Dung Chính</th>
										<th>Ngày Đăng</th>
									
									</tr>

								</thead>
								<tbody>
									<%
										for (int i = 0; i < TinTucDAO.getListTinTuc().size(); i++) {
											String STT = TinTucDAO.getListTinTuc().get(i).getSTT();
											 String delete = "AdminDeleteTinTuc?STT=" + STT;
											String edit = "AdminInfoTinTuc?STT=" + STT; 
									%><tr>
										<td><%=STT%></td>
										<td><%=TinTucDAO.getListTinTuc().get(i).getTieuDe()%></td>
										<td><%=TinTucDAO.getListTinTuc().get(i).getnDTT()%></td>
										<td><%=TinTucDAO.getListTinTuc().get(i).getnDC()%></td>
										<td><%=TinTucDAO.getListTinTuc().get(i).getNgayDang()%></td>
										
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