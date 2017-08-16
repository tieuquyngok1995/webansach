<%@page import="DAO.FuntionLK"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="DAO.FuntionMH"%>
<%@page import="DAO.FuntionTBLT"%>
<%@page import="DAO.FuntionMB"%>
<%@page import="DAO.FuntionLT"%>
<%@page import="DAO.FuntionPK"%>
<%@page import="Model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Funtion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Device Electronice - Trang chủ</title>
<link rel="stylesheet" href="css/index.css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<!-- script cho from dang nhap va bat from -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="shortcut icon" href="images/logo1.png" />
</head>
<body>
	<div id="wrapper">
		<%@ include file="header.jsp"%>
		<div id="header_bot">
			<div id="header_search">
				<div class="menu-product">
					<a href="laptop.jsp"><input class="link2" height="45"
						width="45" src="images/laptop.png" type="image" /></a> <a
						href="mayban.jsp"><input class="link2" height="45" width="45"
						src="images/mayban.png" type="image" /></a> <a href="linhkien.jsp"><input
						class="link2" height="45" width="45" src="images/linhkien.png"
						type="image" /></a> <a href="phukien.jsp"><input class="link2"
						height="45" width="45" src="images/phukien.png" type="image" /></a> <a
						href="thietbiluutru.jsp"><input class="link2" height="45"
						width="45" src="images/tbluutru.png" type="image" /></a> <a
						href="manhinh.jsp"><input class="link2" height="45" width="45"
						src="images/manhinh.png" type="image" /></a>
				</div>
				<div class="search-form">
					<form method="POST" action="Search">
						<input class="text-search" input type="text" name="search"
							id="search" placeholder="Cung cấp những gì bạn cần ..." /> <input
							class="button-search" name="submit" value="Search" type="image"
							src="images/search.png" />
					</form>
				</div>

				<h4 class="search-right">Tổng Hợp Tin Tức Mới</h4>
			</div>
			<div id="slide_show">
				<ul class="aa">
					<li>
						<div class="img-slide">
							<a href="#">Giảm giá cực mạnh với các sản phẩm của HP, Bạn đã
								thử chưa?</a>
						</div> <a href="#"><img height src="images/slideshow1.jpg"></a>
					</li>
					<li>
						<div class="img-slide">
							<a href="#">Chào mừng ngày nhà giáo Việt Nam với loạt chương
								trình Tri Ân!!!</a>
						</div> <a href="#"><img src="images/slideshow2.jpg"></a>
					</li>
					<li>
						<div class="img-slide">
							<a href="#">Mua 1 được 2, tại sao không thử ???</a>
						</div> <a href="#"><img src="images/slideshow3.jpg"></a>
					</li>
					<li>
						<div class="img-slide">
							<a href="#">Bạn đang phân vân không biết nên mua gì? Hãy đến
								với chúng tôi!!!</a>
						</div> <a href="#"><img src="images/slideshow4.jpg"></a>
					</li>
					<li>
						<div class="img-slide">
							<a href="#">Liên tục nhập các loại máy mới, của hầu hết các
								hãng lớn!!!</a>
						</div> <a href="#"><img src="images/slideshow5.jpg"></a>
					</li>
					<li>
						<div class="img-slide">
							<a href="#">Cung cấp các loại linh kiện bạn cần, ngay luôn và
								lập tức!!!</a>
						</div> <a href="#"><img src="images/slideshow6.jpg"></a>
					</li>

				</ul>
			</div>
			<div id="header_botright">
				<ul class="header-new">
					<li>
						<h2>Chương Trình Tri Ân</h2> <a href="#">Chào mừng ngày 20-11
							với hàng loạt giảm giá cho quý thầy cô ...</a>
					</li>
					<li>
						<h2>Apple Quả Táo Khuyết</h2> <a href="#">Chiếc MacBook Pro
							2016 đã chính thức được trình làng với ...</a>
					</li>
					<li>
						<h2>Laptop Rẻ Bền Tốt</h2> <a href="#">4 chiếc laptop giá dưới
							7 triệu nhưng vẩn đủ đáp ứng nhu ...</a>
					</li>
					<li>
						<h2>Máy Bạn Bị Hư</h2> <a href="#">Linh kiện laptop máy tính
							chất lượng giá cả hợp lý luôn là ...</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="navication">
			<div class="product-box">
				<img src="images/product-box1.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<a href="#"> <!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
						<h1>Màn Hình</h1>
						<p>Có đầy đủ các loại màn hình, kich thước, chất lượng khác
							nhau cho bạn chọn.</p>
					</a>
				</div>
			</div>
			<div class="product-box">
				<img src="images/product-box2.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
					<h1>Thùng Case PC</h1>
					<p>Đa dạng về mẫu mã, case chuẩn, case độ, làm nổi bật lên
						phong cách của ban.</p>
				</div>
			</div>
			<div class="product-box">
				<img src="images/product-box3.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
					<h1>Card Graphics</h1>
					<p>Một phần không thể thiếu giúp bạn trải nghiệm những game
						siêu phẩm hay công việc.</p>
				</div>
			</div>
			<div class="product-box">
				<img src="images/product-box4.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
					<h1>Mainboard</h1>
					<p>Trái tim của cả chiếc máy tính, bạn cần có trái tim khỏe
						mạnh để làm mọi việc.</p>
				</div>
			</div>
			<div class="product-box">
				<img src="images/product-box5.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
					<h1>Chipset</h1>
					<p>Trung tâm đầu não, chỉ huy mọi công việc, đảm bảo mọi thứ
						vận hành đúng.</p>
				</div>
			</div>
			<div class="product-box">
				<img src="images/product-box6.jpg" />
				<!-- Hình ảnh sản phẩm -->
				<div class="product-detail">
					<!-- Nội dung sẽ hiện lên khi rê chuột qua ảnh -->
					<h1>Keyboard Mouse</h1>
					<p>Công cụ không thể thiếu, giúp bạn điều khiển chiếc máy tính
						của mình hiệu quả.</p>
				</div>
			</div>
		</div>
<%
String src = "";
String tenSP = "";
String moTa = "";
long gia = 0;
int sL = 1;
String idSP = (String) session.getAttribute("idSP");
if (idSP == null)
	idSP = "";
SanPham sp = ProductDAO.lookingforSanPham(idSP);
	%>
		<div id="content">
			<div class="slide-product">

				<div class="all-product">
					<a href="laptop.jsp"><p class="title-product">Laptop Mới</p></a>
					<%
						ArrayList<SanPham> list = FuntionLT.getDSSP();
						System.out.println(list.size());
					%>
					<%
							for (int i = 0; i < 5; i++) {
						
							src = list.get(i).getImg();
								tenSP = list.get(i).getTenSP().trim();
								gia = list.get(i).getGia();
								idSP = list.get(i).getIdSP().trim();
								String link = list.get(i).getSrc().trim();
						%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"width="24" height="24" /> 
						<a href="#" class="btn-favorite"role="button">Yêu Thích</a> 
						<img class="icon-product2"src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
						<input type="submit" name="idSP" class="btn-default"value="<%=idSP%>" /> 
						<input type="hidden" name="soLuong"value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>
					<a href="laptop.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />

				</div>


				<div class="all-product">
					<a href="laptop.jsp"><p class="title-product">Laptop Bán
							Chạy</p></a>
					<%
						ArrayList<SanPham> list1 = FuntionLT.getDSSP();
						System.out.println(list1.size());
					%>
					<%
						for (int i = 5; i < 10; i++) {
							src = list1.get(i).getImg();
							tenSP = list1.get(i).getTenSP();
							gia = list1.get(i).getGia();
							idSP = list1.get(i).getIdSP().trim();
							String link = list1.get(i).getSrc();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>
					<a href="laptop.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />
				</div>

				<div class="all-product">
					<a href="#"><p class="title-product">Sư Kiện Tiêu Biểu</p></a> <img
						height="" width="1200" src="images/event1.jpg" alt="Sản phẩm 1">
					<div class="caption1">
						<img height="150" width="385" src="images/event2.jpg"
							alt="Sản phẩm 1">
						<div class="info-caption1">
							<a href="#"><h3>Không cần trả trước, rước ngay Galaxy J7
									Prime</h3></a>
							<p>Từ nay đến ngày 30/11, khi mua trả góp không lãi suất các
								dòng smartphone nổi bật của Samsung, được tặng vali cao cấp
								Lock&Lock, phiếu mua hàng 400.000 đồng.</p>
						</div>
					</div>
					<div class="caption1">

						<img height="150" width="385" src="images/event4.jpg"
							alt="Sản phẩm 1">
						<div class="info-caption1">
							<a href="#"><h3>Loa Bluetooth iCutes Mặt Cười</h3></a>
							<p>Giảm giá đồng loạt các sản phẩm loa bluetôth cho bất kì ai
								khi đến của hàng, hãy nhanh chân số lượng có hạn.</p>
						</div>
					</div>
					<div class="caption1">

						<img height="150" width="385" src="images/event3.jpg"
							alt="Sản phẩm 1">
						<div class="info-caption1">
							<a href="#"><h3>Cơ hội sở hữu smartphone Coolpad với giá
									rẻ</h3></a>
							<p>Trong tháng 11 này, Chúng tôi tặng 300 phiếu mua hàng trị
								giá đến 3 triệu đồng cho các khách hàng chọn mua smartphone
								Coolpad. Bên cạnh đó, bạn còn được tặng bộ quà tiện ích, trả góp
								0% lãi suất ...</p>
						</div>
					</div>
					<a href="#"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />
				</div>

				<div class="all-product">
					<a href="mayban.jsp"><p class="title-product">Sản Phẩm Máy
							Bàn</p></a>
					<%
						ArrayList<SanPham> list2 = FuntionMB.getDSSP();
						System.out.println(list2.size());
					%>
					<%
						for (int i = 0; i < 5; i++) {
							 src = list2.get(i).getImg();
							 tenSP = list2.get(i).getTenSP();
							gia = list2.get(i).getGia();
							idSP = list2.get(i).getIdSP().trim();
							String link = list2.get(i).getSrc();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>
					<a href="mayban.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />
				</div>

				<div class="all-product">
					<a href="phukien.jsp"><p class="title-product">Phụ Kiện Máy
							Tính</p></a>
					<%
						ArrayList<SanPham> list3 = FuntionPK.getDSSP();
						System.out.println(list3.size());
					%>
					<%
						for (int i = 0; i < 5; i++) {
							 src = list3.get(i).getImg();
							 tenSP = list3.get(i).getTenSP();
							 gia = list3.get(i).getGia();
							idSP = list3.get(i).getIdSP().trim();
							String link = list3.get(i).getSrc();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>
					<a href="phukien.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />
				</div>

				<div class="all-product">
					<a href="linhkien.jsp"><p class="title-product">Linh Kiện
							Máy Tính</p></a>
					<%
						ArrayList<SanPham> list4 = FuntionLK.getDSSP();
						System.out.println(list4.size());
					%>
					<%
						for (int i = 0; i < 5; i++) {
							 src = list4.get(i).getImg();
							tenSP = list4.get(i).getTenSP();
							gia = list4.get(i).getGia();
							idSP = list4.get(i).getIdSP().trim();
							String link = list4.get(i).getSrc();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>

					<a href="linhkien.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />

				</div>

				<div class="all-product">
					<a href="thietbiluutru.jsp"><p class="title-product">Thiết
							Bị Lưu Trữ</p></a>
					<%
						ArrayList<SanPham> list5 = FuntionTBLT.getDSSP();
						System.out.println(list5.size());
					%>
					<%
						for (int i = 0; i < 5; i++) {
							 src = list5.get(i).getImg();
							 tenSP = list5.get(i).getTenSP();
							gia = list5.get(i).getGia();
							idSP = list5.get(i).getIdSP().trim();
							String link = list5.get(i).getSrc();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>
					<a href="thietbiluutru.jsp"><p class="next-product">Xem
							tiếp</p></a> <img class="icon-next" src="images/next.png" width="24"
						height="24" />

				</div>

				<div class="all-product">
					<a href="manhinh.jsp"><p class="title-product">Màn Hình</p></a>

					<%
						ArrayList<SanPham> list6 = FuntionMH.getDSSP();
						System.out.println(list6.size());
					%>
					<%
						for (int i = 0; i < 5; i++) {
							src = list6.get(i).getImg();
							tenSP = list6.get(i).getTenSP().trim();
							gia = list6.get(i).getGia();
							idSP = list6.get(i).getIdSP().trim();
							String link = list6.get(i).getSrc().trim();
					%>
					<div class="caption">
						<img height="240" width="220" src="<%=src%>" alt="Sản phẩm 1">
						<div class="info-caption">
							<a href="<%=link%>"><h3><%=tenSP%></h3></a>
						</div>
						<div class="primary-caption">
							<img class="icon-primary" src="images/icon-price.png" width="24"
								height="24" />
							<p class="btn-primary">
								&nbsp;<%=gia%>,000.đ
							</p>
						</div>
						<img class="icon-product1" src="images/icon-favtori.png"
							width="24" height="24" /> <a href="#" class="btn-favorite"
							role="button">Yêu Thích</a> <img class="icon-product2"
							src="images/icon-cart.png" width="24" height="24" />
						<form action="<%=request.getContextPath()%>/ThemVaoGH">
							<input type="submit" name="idSP" class="btn-default"
								value="<%=idSP%>" /> <input type="hidden" name="soLuong"
								value="1" />
							<%
								session.getAttribute(Funtion.idSP = idSP);
							%>
						</form>
					</div>
					<%
						}
					%>

					<a href="manhinh.jsp"><p class="next-product">Xem tiếp</p></a> <img
						class="icon-next" src="images/next.png" width="24" height="24" />

				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>