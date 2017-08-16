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
		<a class="link3" href="shoppingguide.jsp">Hướng dẫn mua hàng</a>
		
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
		<div class="info-leftsp">	
			<div class="info-bottomsp">
			<ul>
			<li><a class="info-a1" href="shoppingguide.jsp">Hướng dẫn mua hàng</a>
			<img class="img-infosp" src="images/img-nextsp.png" width="16" height="16" /></li>
			<li><a class="info-a" href="shoppingguide1.jsp">Hướng dẫn mua trả góp</a>
			<img class="img-infosp" src="images/img-nextsp.png" width="16" height="16" /></li>
			<li><a class="info-a" href="#">Hướng dẫn lắp máy </a>
			<img class="img-infosp" src="images/img-nextsp.png" width="16" height="16" /></li>
			<li><a class="info-a" href="#">Hướng dẫn xử lý máy củ</a>
			<img class="img-infosp" src="images/img-nextsp.png" width="16" height="16" /></li>
			</ul>
			</div>
		</div>
		<div class="info-rightsp">
		<h2>BẠN CÓ THỂ LỰA CHỌN MỘT TRONG NHỮNG LỰA CHỌN SAU:</h2>
		<p>Cách 1: Gọi điện thoại đến tổng đài <b>(08-38.151.151)</b> hoặc <b>(1800.1999)</b> từ 7g30-22g (cả CN & ngày lễ) nhân viên chúng tôi luôn sẵn sàng phục vụ bạn.<br><br>
		Cách 2: Mua trực tiếp từ trang web của chúng tôi.<br>
		<p ><b>Bước 1: Tìm sản phẩm cần mua</b></p>
		<p>Bạn có thể tìm kiếm sản phẩm theo nhiều cách: </p> 
		<p>- Click vào "Laptop" để vào trang các sản phẩm laptop sau đó có thể tìm sản phẩm từ trên xuống dưới theo các cách xem, hoặc theo tên hãng, theo giá sản phẩm.</p>
		<p>- Bạn cũng có thể nhập tên sản phẩm cần tìm vào thanh tìm kiếm .</p>
		<img class="img-infosp" src="images/img-infohd.png"  />
		<p ><b>Bước 2: Chọn sản phẩm mua</b></p>
		<p>Sau khi xem thông tin chi tiết sản phẩm, bạn đã ưng ý sản phẩm bạn có thể mua sử dụng 1 trong 3 phương thức mua hàng:</p>
		<p><b>1. ĐẶT MUA, GIAO HÀNG TẬN NƠI </b>(Xem hàng miễn phí, không thích không mua)</p>
		<p><b>2. MUA TRẢ GÓP</b></p>
		<p ><b>Bước 3: Thanh toán (tùy chọn)</b></p>
		<a href="#">Xem cách thanh toán tại đây</a>
		<p ><b>Lưu ý</b></p>
		<p>1. Chúng tôi chỉ chấp nhận những đơn đặt hàng khi cung cấp đủ thông tin chính xác về địa chỉ, số điện thoại. Sau khi bạn đặt hàng, chúng tôi sẽ liên lạc lại để 
		kiểm tra thông tin và thỏa thuận thêm những điều có liên quan.</p>
		<p>2. Một số trường hợp nhạy cảm: giá trị đơn hàng quá lớn & thời gian giao hàng vào buổi tối địa chỉ giao hàng trong ngõ hoặc có thể dẫn đến nguy hiểm. Chúng tôi 
		sẽ chủ động liên lạc với quý khách để thống nhất lại thời gian giao hàng cụ thể.</p>
		<p>3. Trong trường hợp giao hàng chậm trễ mà không báo trước, quý khách có thể không nhận hàng và chúng tôi sẽ hoàn trả toàn bộ số tiền mà quý khách trả trước (nếu có) trong vòng 7 ngày.</p>
		<p>4. Công ty cam kết tất cả hàng hóa gởi đến quý khách đều là hàng chính hãng mới 100% (có đầy đủ hóa đơn, được bảo hành chính thức). Những rủi ro phát sinh trong quá 
		trình vận chuyển (va đập, ẩm ướt, tai nạn...) có thể ảnh hưởng đến hàng hóa, vì thế xin Quý Khách vui lòng kiểm tra hàng hóa thật kỹ trước khi ký nhận. Chúng tôi sẽ không 
		chịu trách nhiệm với những sai lệch hình thức của hàng hoá sau khi Quý khách đã ký nhận hàng.</p>
		</p>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>