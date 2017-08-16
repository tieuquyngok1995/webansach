<%@page import="Model.SanPhamGY"%>
<%@page import="DAO.FuntionSPGY1"%>
<%@page import="Model.SanPham"%>
<%@page import="DAO.FuntionTSCT5"%>
<%@page import="Model.ThongSoCT"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Sản Phẩm</title>
<link rel="stylesheet" href="css/index.css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Itim"
	rel="stylesheet">
<!-- script cho from dang nhap va bat from -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="shortcut icon" href="images/logo1.png" />
<script src="js/jRate.js"></script>
</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=354411364926070";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<body>
<%@ include file="header2.jsp" %>
<div id="header_search1">
	<div id="vt3"class="menu-link">
		<a class="link3" href="index.jsp">Trang chủ</a>&rarr;
		<a class="link3" href="laptop.jsp">Laptop</a>&rarr;
		<a class="link3" href="product5.jsp">Asus</a>
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
<%
	ArrayList<ThongSoCT> list = FuntionTSCT5.getDSSP();
	System.out.println(list.size());
%>
<%
	for (int i = 0; i < list.size(); i++) {
	
 String idSP = list.get(i).getIdSP();
 String tenSP = list.get(i).getTenSP();
 String hangCPU = list.get(i).getHangCPU();
 String congNgheCPU = list.get(i).getCongNgheCPU();
 String tocDoCPU = list.get(i).getTocDoCPU();
 String ram = list.get(i).getRam();
 String loaiRam = list.get(i).getLoaiRam();
 String loaiOCung = list.get(i).getLoaiOCung();
 String oCung = list.get(i).getoCung();
 String ktMHinh = list.get(i).getKtMHinh();
 String DoPGMH = list.get(i).getDoPGMH();
 String mhCU = list.get(i).getMhCU();
 String chipDoHoa = list.get(i).getChipDoHoa();
 String boNhoDH = list.get(i).getBoNhoDH();
 String kenhAT = list.get(i).getKenhAT();
 String diaQuang = list.get(i).getDiaQuang();
 String congGT = list.get(i).getCongGT();
 String chuanWF = list.get(i).getChuanWF();
 String ketnoiKD = list.get(i).getKetnoiKD();
 String pin = list.get(i).getPin();
 String HDH = list.get(i).getHDH();
 String kichThuoc = list.get(i).getKichThuoc();
 String trongLuong = list.get(i).getTrongLuong();
 String tgBH = list.get(i).getTgBH();
 long gia = list.get(i).getGia();
 String img1 = list.get(i).getImg1();
 String img2 = list.get(i).getImg2();
 String img3 = list.get(i).getImg3();
 String img4 = list.get(i).getImg4();
%>
	<div class="title-full">
	<h2 class="title-prd">Laptop <%=tenSP%></h2>
	
	</div>
	
	<div class="all-infoprd">
	<div class="info-lefprd">
	
	<input type="radio" id="image1" name="slide" class="input-product" checked/>
	<label for="image1" class="label-product" id="button1"></label><!--button 1-->
	 
	<input type="radio" id="image2" name="slide" class="input-product"/>
	<label for="image2" class="label-product" id="button2"></label><!--button 2-->
	 
	<input type="radio" id="image3" name="slide" class="input-product"/>
	<label for="image3" class="label-product" id="button3"></label><!--button 3-->
	 
	<input type="radio" id="image4" name="slide" class="input-product"/>
	<label for="image4" class="label-product" id="button4"></label><!--button 4-->

	<div class="slide-wrap">
	<img src="<%=img1%>" width="500" height="465"  />
	<img src="<%=img2%>" width="500" height="465"/>
	<img src="<%=img3%>"  width="500" height="465"/>
	<img src="<%=img4%>"  width="500" height="465"/>
	</div>
	</div>
	</div>

	<div class="info-centerprd">
	<h1>Chỉ: <%=gia%>,000.đ</h1>
	
	<div class="center-title1">
	<p><b>Đặt Online</b> hoặc <b>Gọi 18008888</b> ưu tiên khuyến mãi (SL có hạn):</p>
	<p>- Trả góp 0% Hoặc trả góp 0 đồng Hoặc Tặng Sạc dự phòng. </p>
	</div>
	<div class="center-title2" style="background:#00008B">
	<a href="#"><h4 >MUA NGAY</h4></a>
	<a href="#"><p>Giao tận nơi hoặc nhận tại cửa hàng.</p></a>
	</div>
	<div class="center-title2" style="background:#9400D3">
	<a href="#"><h4>TRẢ GÓP</h4></a>
	<a href="#"><p>Xét duyệt hồ sơ qua điện thoại.</p></a>
	</div>
	<div class="center-title2" style="background:#008B8B">
	<a href="#"><h4>Bảo Hành <%=tgBH%></h4></a>
	<a href="#"><p >Đảm bảo chất lượng tốt nhất. </p></a>
	</div>
	</div>
	<div class="info-rightprd" >
	
	<h4>Ưu đãi dành riêng cho khách hàng đặt trước Online:</h4>
	<p>Giữ hàng tại Shop (không mua không sao).</p>
	<p>Giao hàng miễn phí toàn quốc trong 60 phút.</p>
	<p>Tư vấn miễn phí 24/7 <b>18008888</b> (cả dịp Lễ, Tết).</p>
	<p>Bảo hành nhanh tại các trung tâm bảo hành trên toàn quốc.</p>
	<p>Đổi trả thoải mái theo nhu cầu.</p>
	
	</div>
	
	<ul class="menu-itemproduct">
	<div id="vt1"></div>
	<li><a href="#vt1">Đặc điểm nổi bật</a></li>
	<li><a href="#vt2">Thông số kỹ thuật</a></li>
	<li><a href="#vt3">Hình ảnh</a></li>
	<li><a href="#vt2">Sản phẩm gợi ý</a></li>
	<li><a href="#vt4">Bình luận</a></li>
	<li><a href="#vt4">Đánh giá</a></li>
	<li><a href="help.jsp">Câu hỏi thường gặp</a></li>
	<li><a href="shoppingguide.jsp">Hướng dẫn mua hàng</a></li>
	</ul>
	
	<div class="infoprd-ddnb" >
		<div class="infoprd-ddnbleft" >
		<ul id="navigation">
		<a id="#" href="#ddnb1"><li>Thiết kế trẻ trung</li></a>
		<a id="#" href="#ddnb2"><li>Bàn phím, touchpad hiện đại </li></a>
		<a id="#" href="#ddnb3"><li>Hiệu năng mạnh mẽ </li></a>
		<a id="#" href="#ddnb4"><li>Âm thanh tuyệt vời hoàn hảo </li></a>
		<a id="#" href="#ddnb5"><li>Trải nghiệm thị giác đắm chìm</li></a>
		<a id="vt2" href="#ddnb6"><li>Thời lượng pin ấn tượng</li></a>
		</ul>
		</div>
	
	<div class="infoprd-ddnbright" >
		<div id="ddnb1" class="content">
			<h2>Thiết kế trẻ trung</h2>
			<p>So you want a single page website, uh? Well, if you follow this tutorial you will be able to create a very nifty one-pager. Check out the rest of the sections on this page so you can see for yourself what am I talking about.</p>
			<p>This page consists of different panels that will slide or appear when clicking on the respective link.</p>
			<p>With the general sibling selector we can change the color of the "selected" panel link.</p>
		</div>
		<div id="ddnb2" class="panel">
			<h2>Bàn phím, touchpad hiện đại</h2>
			<p>So you want a single page website, uh? Well, if you follow this tutorial you will be able to create a very nifty one-pager. Check out the rest of the sections on this page so you can see for yourself what am I talking about.</p>
			<p>This page consists of different panels that will slide or appear when clicking on the respective link.</p>
			<p>With the general sibling selector we can change the color of the "selected" panel link.</p>
		</div>
		<div id="ddnb3" class="panel">
			<h2>Bàn phím, touchpad hiện đại</h2>
			<p>So you want a single page website, uh? Well, if you follow this tutorial you will be able to create a very nifty one-pager. Check out the rest of the sections on this page so you can see for yourself what am I talking about.</p>
			<p>This page consists of different panels that will slide or appear when clicking on the respective link.</p>
			<p>With the general sibling selector we can change the color of the "selected" panel link.</p>
		</div>
	</div>
	<div class="infoprd-ddnb1" >
	<h1 id="xemthem">THÔNG SỐ KỸ THUẬT</h1>
	<h2>Bộ xử lý</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Hãng CPU :</p>
	<p class="info-p2">	<%=hangCPU%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Công nghệ CPU :</p>
	<p class="info-p2">	<%=congNgheCPU%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Tốc độ CPU :</p>
	<p class="info-p2">	<%=tocDoCPU%></p>
	</div>
	<h2>Bộ nhớ</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">RAM :</p>
	<p class="info-p2">	<%=ram%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Loại RAM :</p>
	<p class="info-p2">	<%=loaiRam%></p>
	</div>
	<h2>Đĩa Cứng</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Loại ổ đĩa :</p>
	<p class="info-p2">	<%=loaiOCung%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Ổ cứng :</p>
	<p class="info-p2">	<%=oCung%></p>
	</div>
		<div id="vt14" class="detailDiv">
	
	<h2>Màn hình</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Kích thước màn hình :</p>
	<p class="info-p2">	<%=ktMHinh%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Độ phân giải :</p>
	<p class="info-p2">	<%=DoPGMH%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Màn hình cảm ứng :</p>
	<p class="info-p2">	<%=mhCU%></p>
	</div>
	<h2>Đồ họa</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Chip đồ họa :</p>
	<p class="info-p2">	<%=chipDoHoa%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Bộ nhớ đồ họa :</p>
	<p class="info-p2">	<%=boNhoDH%></p>
	</div>
	<h2>Âm thanh, Đĩa quang</h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Kênh âm thanh :</p>
	<p class="info-p2">	<%=kenhAT%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Có sẵn đĩa quang :</p>
	<p class="info-p2">	<%=diaQuang%></p>
	</div>
	<h2>Tính năng mở rộng </h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Cổng giao tiếp :</p>
	<p class="info-p2">	<%=congGT%></p>
	</div>
	<h2>Giao tiếp mạng </h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Chuẩn wifi :</p>
	<p class="info-p2">	<%=chuanWF%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Kết nối không dây :</p>
	<p class="info-p2">	<%=ketnoiKD%></p>
	</div>
	<h2>PIN/Battery </h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Thông tin pin :</p>
	<p class="info-p2"><%=pin%></p>
	</div>
	<h2 >Hệ điều hành có sắn </h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Hệ điều hành :</p>
	<p class="info-p2">	<%=HDH%></p>
	</div>
	<h2>Kích thước trọng lượng </h2>
	<div class="infoprd-prd1" >
	<p class="info-p1">Kích thước :</p>
	<p class="info-p2">	<%=kichThuoc%></p>
	</div>
	<div class="infoprd-prd1" >
	<p class="info-p1">Trọng lượng :</p>
	<p class="info-p2">	<%=trongLuong%></p>
	</div>
	
	</div>
	
		<a class="xemthem" href="#xemthem" >Xem thêm thông tin	</a>
		
			<div id="jRate" ></div>
			<div id="vt4"></div>
<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&width=201&layout=button_count&action=recommend&size=large&show_faces=true&share=true&height=46&appId" width="201" height="46" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
		<div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="700" data-numposts="5"></div>
	
	</div>
	<div class="infoprd-ddnb2" >
	<h1>Sản phẩm gợi ý</h1>
	<%
	ArrayList<SanPhamGY> list2 = FuntionSPGY1.getDSSP();
	System.out.println(list2.size());
%>
<%
	for (int j = 0; j < 10; j++) {
	String ten = list2.get(j).getTenSP();
	long giasp = list2.get(j).getGia();
	String anh = list2.get(j).getImg();
	String url = list2.get(j).getSrc();
%>
	<div class="infoprd-prd2" >
	<img src="<%=anh%>" width="110" height="120"  />
	<a href="<%=url%>"><p><%=ten%></p></a>
	<p><%=giasp%>,000.đ</p>
	</div>
		<%
}
%>
	</div>



	</div>
<%
}
%>
	</div>

<%@ include file="footer.jsp" %>
</body>
</html>