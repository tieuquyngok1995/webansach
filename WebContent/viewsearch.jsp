
<%@page import="DAO.FuntionMB"%>
<%@page import="DAO.FuntionLK"%>
<%@page import="DAO.FuntionPK"%>
<%@page import="DAO.FuntionMH"%>
<%@page import="DAO.FuntionTBLT"%>
<%@page import="Model.SanPham"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Model.Funtion"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Linh Kiện</title>
<link rel="stylesheet" href="css/index.css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Itim"
	rel="stylesheet">
<!-- script cho from dang nhap va bat from -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="shortcut icon" href="images/logo1.png" />
</head>
<body>
<%@ include file="header.jsp" %>
<div id="wrapper">
<div id="header_search1">
	<div class="menu-link">
		<a class="link3" href="index.jsp">Trang chủ</a>&rarr;
		<a class="link3" href="linhkien.jsp">Linh Kiện</a>
		
	</div>
	<div class="menu-primary">
		<a class="link1" href="5tr.jsp">Dưới 5tr</a>
		<a class="link1" href="10tr.jsp">Từ 5tr - 10tr</a>
		<a class="link1" href="15tr.jsp">Từ 10tr - 15tr</a>
		<a class="link1" href="20tr.jsp">Trên 15tr</a>
	</div>
	<div class="search-form">
		<form method="POST" action="Search">
		<input class="text-search" input type="text" name="search" id="search"placeholder="Cung cấp những gì bạn cần ..."/>
		<input class="button-search" name="submit" value="Search" type="image" src="images/search.png"  />
	</form>
	</div>
</div>

<div id="content">
	<div class="slide-product">
		<div class="all-product">
		<%
			int count = 0;
			ArrayList pList = new ArrayList();
			String color = "#F9EBB3";
			if(request.getAttribute("piList") !=null){
				ArrayList al = (ArrayList)request.getAttribute("piList");
				System.out.println(al);
				Iterator itr = al.iterator();
				while(itr.hasNext()){
					if((count%2) == 0){
						color = "#EEFFEE";
					}
					count++;
					pList = (ArrayList) itr.next();
		%>
				<div class="caption">
					<img height="240" width="220" src="<%=pList.get(0)%>"
						alt="Sản phẩm 1">
					<div class="info-caption">
						<a href="<%=pList.get(1)%>"><h3><%=pList.get(2)%></h3></a>
					</div>
					<div class="primary-caption">
						<img class="icon-primary" src="images/icon-price.png" width="24"
							height="24" />
						<p class="btn-primary">&nbsp;<%=pList.get(3)%>,000.đ</p>
					</div>
							
					<img class="icon-product1" src="images/icon-favtori.png" width="24"
						height="24" /> <a href="#" class="btn-favorite" role="button">Yêu
						Thích</a> <img class="icon-product2" src="images/icon-cart.png"
						width="24" height="24" /> <a href="#" class="btn-default1"
						role="button">Đặt hàng</a>
				</div>
				<% 
				} // end While
			}//endif			
			if(count == 0){
		%>
		</div>
	</div>
	<div class="error">
	<h1>ERROR 404</h1>
	<h2>Xin Lỗi! Có Gì Đó Sai Sai</h2>
	<h4>TRANG BẠN VỪA TRUY CẬP KHÔNG TỒN TẠI HOẶC ĐÃ ĐƯỢC XÓA!</h4>
	<H4>BẠN VUI LÒNG QUAY TRỞ VỀ TRANG CHỦ<a href="index.jsp">HOME</a></H4>
	
	<img  src="images/img-404.png" />
			</div>	
	</div>
			
<%
}
%>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>