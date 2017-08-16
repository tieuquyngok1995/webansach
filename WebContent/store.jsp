<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Hệ thống cửa hàng</title>
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
<div id="header_search1">
	<div class="menu-link">
		<a class="link3" href="index.jsp">Trang chủ</a>&rarr;
		<a class="link3" href="store.jsp">Hệ thống cửa hàng</a>
		
	</div>
	<div class="menu-primary">
		
	</div>
	<div class="search-form">
		<form method="POST" action="Search">
		<input class="text-search" input type="text" name="search" id="search"placeholder="Cung cấp những gì bạn cần ..."/>
		<input class="button-search" name="submit" value="Search" type="image" src="images/search.png"  />
	</form>
	</div>
</div>

<div id="content">
	<div class="all-info">
	
	<div class="info-leftmap">
		<h1>Danh sách các cửa hàng </h1>
		<div class="search-form">
				<input class="text-search1" name="" type="search" placeholder="Tìm kiếm cửa hàng"/>
				<input class="button-search" name="" type="image" src="images/search.png"  />
		</div>
			<div class="info-bottom1">
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Trung tâm chính<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 1<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 2<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 3<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 4<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 5<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh 6<p></a>
			</div>	
	</div>
	<div class="info-rightmap">
	<iframe src="https://www.google.com/maps/d/u/0/embed?mid=12dMq_-fHWvvr9At6GlsFtRB-YEw" width="800" height="600"></iframe>
	</div>
	</div>
	
	
</div>

<%@ include file="footer.jsp" %>
</body>
</html>