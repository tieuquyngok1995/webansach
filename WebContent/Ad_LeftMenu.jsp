<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<nav class="ts-sidebar">
	<ul class="ts-sidebar-menu">
		<li class="ts-label">Search</li>
		<li><input type="text" class="ts-sidebar-search"
			placeholder="Search here..."></li>
		<li class="ts-label">Main</li>

		<li><a href="#" class="parent"><i class="fa fa-desktop"></i>Tin Tức Sự Kiện</a>
			<ul>
				<li><a href="Ad_TinTuc.jsp"> &nbsp; &nbsp; &nbsp;Quản lí tin tức </a></li>
				<li><a href="Ad_SuKien.jsp"> &nbsp; &nbsp; &nbsp;Quản lí sự kiện</a></li>
			</ul>
		</li>	
			
		<li><a href="Ad_Account.jsp" class="parent"><i class="fa fa-desktop"></i>Quản lí tài khoản</a>
			<ul>
				<li><a href="Ad_Account.jsp"> &nbsp; &nbsp; &nbsp;Người dùng </a></li>
				<li><a href="Ad_Account.jsp"> &nbsp; &nbsp; &nbsp;Nhân viên</a></li>
			</ul>
		</li>
		
		<li>
			<div class="more"><i class="fa fa-angle-down"></i>
			</div> <a href="" class="parent"><i class="fa fa-desktop"></i>Quản lí hàng hóa</a>
			<ul>
				<li><a href="Ad_Product.jsp"> &nbsp; &nbsp; &nbsp; Sản phẩm</a></li>
				<li><a href="Ad_Product.jsp"> &nbsp; &nbsp; &nbsp; Giá</a></li>
				<li><a href="Ad_Product.jsp"> &nbsp; &nbsp; &nbsp; Số lượng</a></li>
				<li><a href="Ad_Product.jsp"> &nbsp; &nbsp; &nbsp; Sắp diễn ra</a></li>
			</ul>
		</li>

		<li><a href="#" class="parent"><i class="fa fa-desktop"></i>Quản đơn hàng</a>
			<ul>
				<li><a href="Ad_DonHang.jsp"> &nbsp; &nbsp; &nbsp; Đã xác nhận</a></li>
				<li><a href="Ad_DonHangTT.jsp"> &nbsp; &nbsp; &nbsp; Chưa xác nhận</a></li>
			</ul>
		</li>
		<li><a href="#" class="parent"><i class="fa fa-desktop"></i>Quản lí nhà sản xuất</a>
			<ul>
				<li><a href="Ad_NhaSX.jsp"> &nbsp; &nbsp; &nbsp;Nhà sản xuất</a></li>
				<li><a href="Ad_NhaSX1.jsp"> &nbsp; &nbsp; &nbsp;Nhà phân phối</a></li>
				<li><a href=""> &nbsp; &nbsp; &nbsp;Đại lý</a></li>
			</ul>
		</li>
		<li><a href="#" class="parent"><i class="fa fa-desktop"></i>Quản lí kho bãi</a>
			<ul>
				<li><a href="Ad_KhoDD.jsp"> &nbsp; &nbsp; &nbsp;Kho đang dùng</a></li>
				<li><a href="Ad_Kho.jsp"> &nbsp; &nbsp; &nbsp; Kho đang thuê</a></li>
			</ul>
		</li>
		<li><a href="NewFile.jsp" class="parent"><i class="fa fa-desktop"></i>Thống kê </a>
			<ul>
				<li><a href="charTC.jsp"> &nbsp; &nbsp; &nbsp; Lượng người truy cập</a></li>
				<li><a href="charLSP.jsp"> &nbsp; &nbsp; &nbsp; Loại sản phẩm</a></li>
				<li><a href="charSP.jsp"> &nbsp; &nbsp; &nbsp; Hãng sản phẩm</a></li>
				<li><a href="charDT.jsp"> &nbsp; &nbsp; &nbsp; Doanh Thu</a></li>
				<li><a href="charDH.jsp"> &nbsp; &nbsp; &nbsp; Đơn Hàng</a></li>
			</ul>
		</li>
		<li><div class="more"><i class="fa fa-angle-down"></i></div> 
		<a href="#" class="parent"><i class="fa fa-sitemap"></i> 
		</a> <!-- Account from above -->
	</ul>
</body>
</html>