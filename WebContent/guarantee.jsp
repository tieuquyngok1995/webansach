<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Trung tâm bảo hành</title>
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
		<a class="link3" href="guarantee.jsp">Trung tâm bảo hành</a>
		
	</div>
	<div class="menu-primary">
		<a class="link1" href="5tr.jsp">Dưới 5tr</a>
		<a class="link1" href="10tr.jsp">Từ 5tr - 10tr</a>
		<a class="link1" href="20tr.jsp">Từ 10tr - 20tr</a>
		<a class="link1" href="25tr.jsp">Trên 20tr</a>
	</div>
	<div class="search-form">
		<input class="text-search" name="" type="search" placeholder="Cung cấp những gì bạn cần ..."/>
		<input class="button-search" name="" type="image" src="images/search.png"  />
	</div>
</div>
<div id="content">
	<div class="all-info">
	<div class="info-leftmap">
		<h1>Danh sách trung tâm bảo hành </h1>
		<div class="search-form">
				<input class="text-search1" name="" type="search" placeholder="Tìm kiếm cửa hàng"/>
				<input class="button-search" name="" type="image" src="images/search.png"  />
		</div>
			<div class="info-bottom1">
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Trung tâm bảo hành chính<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh bảo hành 1<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh bảo hành 2<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh bảo hành 3<p></a>
				<img class="img-infoleft1" src="images/info-next.png" width="24" height="24" />
			<a href="#"><p class="info-p">Chi nhánh bảo hành 4<p></a>
			</div>	
	</div>
	<div class="info-rightmap">
		<iframe src="https://www.google.com/maps/d/u/0/embed?mid=17s52tpeVcF4pcAasSf-qBLCI5Qg" width="800" height="600"></iframe>
	</div>
	</div>
</div>	
<%@ include file="footer.jsp" %>
</body>
</html>