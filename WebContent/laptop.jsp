<%@page import="Model.CauHinhSPLT"%>
<%@page import="DAO.CauHinhSPLTDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Model.Funtion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Laptop</title>
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
		<a class="link3" href="laptop.jsp">Laptop</a>
		
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
<div id="navication">
		<div class="product-box">
			<img src="images/product-dell.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hangdell.jsp"><h1>Dell</h1>
				<p>Dell là thương hiệu bán chạy nhất được đánh giá là dòng laptop có linh kiện bền, hiệu năng cao .</p></a>
			</div>
		</div>
		<div class="product-box">
			<img src="images/product-asus.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hangasus.jsp"><h1>Asus</h1>
				<p>Asus khá sáng tạo và được yêu thích về tính thẩm mĩ của thiết kế. Là thương hiệu ultrabook được yêu thích.</p></a>
			</div>
		</div>
		<div class="product-box">
			<img src="images/product-acer.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hangacer.jsp"><h1>Acer</h1>
				<p>Có những đánh giá tốt về hỗ trợ kĩ thuật và thiết kế. Có một số điểm nổi bật như về giá trị lựa chọn.</p></a>
			</div>
		</div>
		<div class="product-box">
			<img src="images/product-hp.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hanghp.jsp"><h1>Hp</h1>
				<p>Giá phải chăng hợp lí phù hợp nhu cầu người dùng, thiết kế đẹp, chiềm thị phần lớn.</p></a>
			</div>
		</div><div class="product-box">
			<img src="images/product-levono.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hanglevono.jsp"><h1>Levono</h1>
				<p>Cung cấp một sự kết hợp tốt giữa giá trị và lựa chọn, và các laptop chất lượng cao cho doanh nghiệp.</p></a>
			</div>
		</div>
		<div class="product-box">
			<img src="images/product-apple.jpg" /> <!-- Hình ảnh sản phẩm -->
			<div class="product-detail"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
				<a href="hangapple.jsp"><h1>Apple</h1>
				<p>Đánh giá hàng đầu về “đẳng cấp” trong thiết kế cũng như chất lượng sản phẩm.</p></a>
			</div>
		</div>
	</div>
<div id="content">
	<div class="slide-product">
		<div class="all-product">
<%	

	ArrayList<CauHinhSPLT> list = CauHinhSPLTDAO.getCHSPLT();
	System.out.println(list.size());
%>
<%
	for (int i = 0; i < list.size(); i++) {
	
	String tenSP = list.get(i).getTenSP();
	String cpu = list.get(i).getCPU();
	String ram = list.get(i).getRam();
	String oCung = list.get(i).getoCung();
	String manHinh = list.get(i).getManHinh();
	String camUng = list.get(i).getCamUng();
	String doHoa = list.get(i).getDoHoa();
	String webCam = list.get(i).getWebCam();
	String cLV = list.get(i).getcLV();
	long gia = list.get(i).getGia();
	String img = list.get(i).getImg();
	String link = list.get(i).getSrc();
%>
		<div class="caption">
				<img height="240" width="220" src="<%=img%>" alt="Sản phẩm 1">
               <div class="info-caption">
				<a href="product.jsp"><h3><%=tenSP%></h3></a>
			</div>
			<div class="info-caption2">
				<p>
				CPU: <%=cpu%><br>
				Ram: <%=ram%><br>
				Ổ Cứng: <%=oCung%><br>
				Màn Hình: <%=manHinh%> <br>
				Cảm ứng:	<%=camUng%> <br>
				Đồ Họa: <%=doHoa%><br>
				Webcam:	<%=webCam%> <br>
				Chất liệu vỏ: <%=cLV%> <br>
				</p>
			</div>
               <div class="primary-caption">
				<img class="icon-primary" src="images/icon-price.png" width="24" height="24" />
				<p class="btn-primary" >&nbsp;<%=gia%>,000.đ</p> 
			</div>
				<img class="icon-product1" src="images/icon-favtori.png" width="24" height="24" />
				<a href="#" class="btn-favorite" role="button">Yêu Thích</a> 
				<img class="icon-product2" src="images/icon-cart.png" width="24" height="24" />
				<a href="#" class="btn-default1" role="button">Đặt hàng</a>
		</div>
<%
}
%>
		<div class="caption-big">
			<img height="350" width="350" src="images/HP PAVILION-032l.jpg" alt="Sản phẩm 1">
               <div class="info-caption">
				<a href="#"><h3>HP Pavilion, Intel Core i5, Ram 4 GB</h3></a>
			</div>
			<div class="all-caption">
			<div class="info-caption3">
                   <p>
				CPU: Intel, A-Series, 2.30 GHz<br>
				Ram: 4 GB, 1600 MHz<br>
				Ổ Cứng: HDD, 500 GB<br>
				Màn Hình: 14 inch, HD <br>
				</p>
			</div>
			<div class="info-caption3">
                   <p>
				Cảm ứng: 	Không<br>
				Đồ Họa:	Intel®HD Graphics520<br>
				Webcam:	0.9 MP(16:9) <br>
				Chất liệu vỏ: Vỏ nhựa<br>
				</p>
			</div>
			</div>
			<div class="caption-small">
               <div class="primary-caption">
				<img class="icon-primary" src="images/icon-price.png" width="24" height="24" />
				<p class="btn-primary" >12,399,000.đ</p> 
			</div>
				<img class="icon-product1" src="images/icon-favtori.png" width="24" height="24" />
				<a href="#" class="btn-favorite" role="button">Yêu Thích</a> 
				<img class="icon-product2" src="images/icon-cart.png" width="24" height="24" />
				<a href="#" class="btn-default1" role="button">Đặt hàng</a>
			</div>
		</div>
		

		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>