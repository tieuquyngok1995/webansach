
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Model.SanPham"%>
<%@page import="Model.Funtion"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Trang chủ</title>
<link rel="stylesheet" href="css/index.css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />

<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="shortcut icon" href="images/logo1.png" />
<script src="js/bootstrap.min.js">
	
</script>
<script src="js/jquery.minv3.js">
	
</script>

</head>
<body>
	
	
<div id="wrapper">
<%@ include file="header.jsp"%>
 <%
		String idSp = request.getParameter("getIdSP");
		ArrayList<SanPham> list = Funtion.getGH();
	%>
<div id="content">
	<div class="slide-product1">
	
	<div class="dhtop">
	<h1>THÔNG TIN ĐƠN HÀNG</h1>
	</div>	
	<%
					for (int i = 0; i < list.size(); i++) {
				%>
	<div class="dhcenter">
		<div class="dhcenter-all">
		<img class="imgdh" height="150" width="140" src="<%=list.get(i).getImg()%>" alt="Sản phẩm 1">
		<div class="dhcenter-right">
			<div class="dhcenter-right-top">
				<p class="dhp1"></p>
				<p class="dhp2">ĐƠN GIÁ</p>
				<p class="dhp3">SỐ LƯỢNG</p>
				<p class="dhp2">THÀNH TIỀN</p>
				<p class="dhp4"></p>
			</div>
			
			<div class="dhcenter-right-bot">
				<p class="dhp1bot"><%=list.get(i).getTenSP()%></p>
				<p class="dhp2"><b><%=list.get(i).getGia()%>,000 VNĐ</b></p>
			<div class="dhp3">
			<form action="<%=request.getContextPath()%>/TangSanPhamGH">
			<input class="dhipup" name="" type="image" src="images/icon-dhup.png" width="28" height="28" />
			</form>
			
			<p ><%=list.get(i).getSoLuong()%></p>
			
			<form action="<%=request.getContextPath()%>/GiamSanPhamGH">
			<input class="dhipdown"name="" type="image" src="images/icon-dhdow.png" width="28" height="28" />
			</form>
			</div>
				<p class="dhp2bot"><b><%=list.get(i).thanhToan()%>,000 VNĐ</b></p>
				<form action="<%=request.getContextPath()%>/XoaSanPhamGH">
				<input class="dhp4" name="" type="image" src="images/icon-dhxoa.png" width="32" height="32" />
				</form>
				<%
							String id = list.get(i).getIdSP();
								String link = "XoaSanPhamGH?idSP=" + id;
						%> <a href="<%=response.encodeRedirectURL(link)%>"><span
							class="btntt btnttsm"></span></a>
			</div>
		</div>
		</div>
	</div>
	<%
					}
				%>
	<div class="dhbot">
	
	<div class="dhbot-right">
		<p class="dhpt1">Tổng tiền đơn hàng:
		<%=Funtion.tongTienGH()%>
		VNĐ</p>
		<p class="dhpt2"><a href="<%=request.getContextPath()%>/index.jsp"
							class="btntt btnttsm"> Tiếp tục mua</a></p>
		<p class="dhpt3"><a
							href="<%=response.encodeRedirectURL("ThanhToan")%>"
							class="btntt btnttsm">Thanh Toán</a></p>
		<p class="dhpt2"><a
							href="<%=response.encodeRedirectURL("XoaGH")%>"
							class="btntt btnttsm"> Xóa Giỏ Hàng</a></p>
		
		<form class="dhpt3" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">

            <!-- Nhập địa chỉ email người nhận tiền (người bán) -->
            <input type="hidden" name="business" value="tieuquyngok1995@gmail.com">

            <!-- tham số cmd có giá trị _xclick chỉ rõ cho paypal biết là người dùng nhất nút thanh toán -->
            <input type="hidden" name="cmd" value="_xclick">

            <!-- Thông tin mua hàng. -->
            <input type="hidden" name="item_name" value="HoaDonMuaHang">
			<!--Trị giá của giỏ hàng, vì paypal không hỗ trợ tiền việt nên phải đổi ra tiền $-->
          	<input type="hidden"  name="amount"  value="<%=Funtion.tongTienGH()%>">
			<!--Loại tiền-->
            <input type="hidden" name="currency_code" value="USD">
			<!--Đường link mình cung cấp cho Paypal biết để sau khi xử lí thành công nó sẽ chuyển về theo đường link này-->
            <input type="hidden" name="return" value="http://localhost:8080/WebBanMayTinh/index.jsp">
			<!--Đường link mình cung cấp cho Paypal biết để nếu  xử lí KHÔNG thành công nó sẽ chuyển về theo đường link này-->
            <input type="hidden" name="cancel_return" value="http://localhost:8080/WebBanMayTinh/404.jsp">
            <!-- Nút bấm. -->
            <input type="submit" name="submit" value="Thanh Toan Paypal">
	</form>
						
		<p class="dhpt2" style="margin: -10px 0 0 0;">
		<a href="https://www.baokim.vn/payment/product/version11?business=tieuquyngok1995%40gmail.com&
		id=&order_description=aa&product_name=ten+san+pham&product_price=9999&product_quantity=10&total_amount=<%=Funtion.tongTienGH()%>&url_cancel=http://localhost:8080/WebBanMayTinh/404.jsp
		&url_detail=http://localhost:8080/WebBanMayTinh/404.jsp&url_success=http://localhost:8080/WebBanMayTinh/404.jsp"><img src="http://www.baokim.vn/developers/uploads/baokim_btn/thanhtoan-l.png" alt="Thanh toán an toàn với Bảo Kim !" border="0" title="" ></a></p>
	
	
	</div>
	</div>

</div>
</div>
<%@ include file="footer.jsp"%> 
</div>
</body>
</html>