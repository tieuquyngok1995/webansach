<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Nhà sản xuất</title>
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
		<a class="link3" href="invest.jsp">Nhà sản xuất</a>
		
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
		<div class="info-left">	
		<img class="img-infoleft" src="images/img-infoleft1.jpg" alt="Anh gioi thieu">
		</div>
		<div class="info-right">
		<h2>DÀNH CHO CÁC TỐI TÁC CỦA CHÚNG TÔI</h2>
		<p>Công ty Cổ phần đầu tư <b>Device Electronice</b> vận hành chuỗi cung cấp các sản phẩm điện tử máy tính laptop trong những năm qua,
		có thể phát triển như hiện tại không thể thiếu sự hợp tác của các bạn.<br><br>

		Đối tác <b>Laptop</b> với hơn 20 đối tác cung cấp các sản phẩm laptop chính hãng nhập khẩu từ các nhà sản xuất uy tín tạo điều kiện 
		phất tiển mở rộng thị trường.<br><br>

		Đối tác <b>Máy bàn</b> đã hợp tác và phát triển cùng chúng tôi từ ngày thành lập cũng là nơi cung cấp các chuyên viên kĩ thuật đầy đủ 
		kinh nghiệm sẵn sàng trong mọi tình huống.<br><br>
		
		Cũng không thể thiếu các nhà phân phối <b>Phụ kiện</b> với những sản phẩm chất lượng uy tín mang đến cho người dùng trải nghiệm tốt nhất
		uy tín nhất.<br><br>
		
		Đối với mảng <b>Linh kiện</b> vấn đề đi đầu là chất lượng với hơn 50 trung tâm và các nhà phân phối có chất lượng uy tín đã mang đến cho 
		chúng tôi những sản phẩm chất lượng tốt nhất.<br><br>
		</div>
	</div>
	
	<div class="all-info">
	<h2>NHỮNG ĐỐI TÁC UY TÍN TIN CẬY</h2>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infosx2.png" width="250" height="250" />
			<p class="p-infocenter"><b>Hỗ trợ liên tục và nhiệt tình</b></p>
			<p>Luôn luôn trực tuyến và hỗ trợ cung cấp các mặt hàng cần thiết có công ty.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infosx1.png" width="250" height="250" />
			<p class="p-infocenter"><b>Chính sách thỏa đáng </b></p>
			<p>Với những chính sách ưu đãi hỗ trợ mọi mặt taok điều kiện phân phối sản phẩm.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infosx4.png" width="250" height="250" />
			<p class="p-infocenter"><b>Chất lượng là điểm vàng</b></p>
			<p>Luôn đăt chất lượng sản phẩm lên hàng đầu chất lượng là điểm vàng cho việc phát triển.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infosx3.png" width="250" height="250" />
			<p class="p-infocenter"><b>Không ngừng thay đổi và phát triển</b></p>
			<p>Không ngừng thay đổi nâng cao chất lượng dịch vụ.</p>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>