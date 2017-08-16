<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Tuyển dụng</title>
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
		<a class="link3" href="recruitment.jsp">Tuyển dụng</a>
		
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
		<div class="info-left1">	
		<form method='post' class="info-letfform">
		<label class="user">
			<img class="icon-user1" src="images/user-icon.png" width="24" height="24" />
			<input name="" type="text" placeholder="Username"/>
			<img class="icon-user2" src="images/pass-icon.png" width="24" height="24" />
			<input name="" type="password" placeholder="Password"/>
			<img class="icon-user2" src="images/pass-icon.png" width="24" height="24" />
			<input name="" type="password" placeholder="RePassword"/>
			<img class="icon-user2" src="images/mail-icon.png" width="24" height="24" />
			<input name="" type="text" placeholder="Email"/>
			<img class="icon-user2" src="images/lock-icon.png" width="24" height="24" />
			<input name="" type="text" placeholder="Phone"/>
			<img class="icon-user2" src="images/key-icon.png" width="24" height="24" />
			<input name="" type="text" placeholder="Address"/>
		</label>
		<label class="submit">
		<input class="login-but" name="" type="submit" value="Đăng ký" />
		
		</label>
		</form>			
		</div>
		<div class="info-right">
		<h2>CƠ HỘI VIỆC LÀM CHO MỌI NGƯỜI</h2>
		<p>Công ty Cổ phần đầu tư <b>Device Electronice</b> chúng tôi luôn có các vị trí dành cho bạn bạn nhiệt huyết bạn sáng tạo và bạn 
		đam mê? hãy đăng kí ngay để trở thành thành viên của chúng tôi.<br><br>

		Mảng kinh doanh với những nhà phát triển tài ba cùng những con người sáng tạo mang lại những chiến lược kinh doang đặc biệt, bạn có
		muốn làm việc ở đây?.<br><br>

		Mảng maketing với nhũngw người đầy quyết tâm và nội lực sẵn sàng vượt qua mọi đối thủ để mang sản phẩm đến với người dùng đem lại
		nguồn doanh thu khủng? bạn có thích việc này không?.<br><br>
		
		Bạn muốn tiếp xúc muốn va chạm muốn giới thiệu những sản phẩm mới ? hãy đến với mảng bán hàng nơi mà bạn có thể mang những sản phẩm tốt
		mới nhất đến với khách hàng.<br><br>
		
		Chúng tôi luôn sẵn lòng chào đón tất cả các bạn gia nhập gia đình chúng tôi, chung tay hợp tác cùng phát triển.
		</div>
	</div>
	
	<div class="all-info">
	<h2>CƠ HỘI VIỆC LÀM CHO MỌI NGƯỜI</h2>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infotd2.png" width="250" height="250" />
			<p class="p-infocenter"><b>Công việc ổn định</b></p>
			<p>Mang lại nguồn công việc lớn đáp ứng nhu cầu công việc hiện tại.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infotd3.png" width="250" height="250" />
			<p class="p-infocenter"><b>Tiếp cận đa dạng khách hàng</b></p>
			<p>Với số lượng khách hàng đa dạng giúp nhanh chóng tiếp cận học hỏi tích lũy kiến thức phát triển bản thân.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infotd1.png" width="250" height="250" />
			<p class="p-infocenter"><b>Nhiều chính sách ưu đãi</b></p>
			<p>Chính sách ưu đãi mang lại nhiêu lựa chọn tạo điều kiện cho nhân viên.</p>
		</div>
		<div class="info-center">	
			<img class="img-infocenter" src="images/img-infotd4.png" width="250" height="250" />
			<p class="p-infocenter"><b>Tính kỷ luật cao</b></p>
			<p>Chất lượng đi đôi với kỷ luật nghiêm túc trong từng khâu.</p>
		</div>
	</div>
</div>
	

<%@ include file="footer.jsp" %>
</body>
</html>