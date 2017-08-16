<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Hướng dẫn mua hàng</title>
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
		<a class="link3" href="help.jsp">Trợ Giúp</a>
		
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

<div class="all-info">
		<div class="info-lefthelp">
		<h2> Hãy để lại câu hỏi của bạn</h2>
		<form method='post' class="info-letfform1">
		<label class="user">
			<div class="all-input">
			<img class="icon-user" src="images/user-icon.png" width="24" height="24" />
			<input class="input1" name="" type="text" placeholder="Username"/></div>
			
			<div class="all-input">
			<img class="icon-user" src="images/mail-icon.png" width="24" height="24" />
			<input class="input1" name="" type="text" placeholder="Email"/></div>
			
            <textarea class="help-text"  name="" cols="35" rows="5" placeholder="Nhập câu hỏi của bạn"></textarea>
		</label>
		<label class="submit">
		<input class="" name="" type="submit" value="Gửi câu hỏi" />
		
		</label>
		</form>			
		</div>
		<div class="info-right">
		<h2>GIẢI ĐÁP MỌI THẮC MẮC CỦA BẠN</h2>
		
		<p class="p1"><a href="javascript:togglecomments('ID-Name1')">
		 Đăng ký tài khoản bằng số điện thoại được không?
		</a></p>
		<div class="commenthidden" id="ID-Name1">
		<p>Hiện nay chúng tôi hỗ trợ đăng ký tài khoản qua email và facebook. Sau khi đăng kí tài khoản, bạn vui lòng vào thông tin 
		tài khoản và cập nhật số điện thoại để nhận thông báo về các chương trình khuyến mãi, sách mới của chúng tôi.
		</p>
		</div>
		<p><a href="javascript:togglecomments('ID-Name2')">Không nhận được mã kích hoạt sau khi đăng ký?</a></p>
		<div class="commenthidden" id="ID-Name2">
		<p>Có thể do các nguyên nhân sau:</p>
		<p>- Sai địa chỉ email.</p>
		<p>- Email nằm trong thùng thư rác (spam).</p>
		<p>- Email cài đặt chế độ không nhận thư của chúng tôi.</p>
		<p>- Kết nối internet chậm.</p>
		<p>- Hệ thống đang trong thời gian nâng cấp.</p>
		<p>Bạn vui lòng kiểm tra lại địa chỉ email, thùng thư rác và các cài đặt của email để có thể nhận được thư 
		kích hoạt của chúng tôi.</p>
		</div>
		<p><a href="javascript:togglecomments('ID-Name3')">Không kích hoạt tài khoản có đăng nhập được không?</a></p>
		<div class="commenthidden" id="ID-Name3">
		<p>Bạn cần xác nhận email để kích hoạt tài khoản khi đó bạn mới có thể đăng nhập vao hệ thống</p>
		</div>
		<p><a href="javascript:togglecomments('ID-Name4')">Không đăng nhập được trang web?</a></p>
		<div class="commenthidden" id="ID-Name4">
		<p>Có thể do các nguyên nhân sau:</p>
		<p>- Thông tin đăng nhập chưa chính xác</p>
		<p>- Kết nối internet</p>
		<p>- Hệ thống đang trong thời gian nâng cấp</p>
		<p>Trong đó, vấn đề về kết nối internet thường xuyên xảy ra nhất. bạn vui lòng đợi trong vài phút và thử đăng nhập lại.</p>
		</div>
		
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>