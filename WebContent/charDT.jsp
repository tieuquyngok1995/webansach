<%@page import="DAO.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="http://www.google.com/jsapi"></script>
      <script type="text/javascript" src="http://www.google.com/jsapi"></script>
       <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
                var data = google.visualization.arrayToDataTable([
 ['Country', 'Area(square km)'],['Laptop', 120],['Máy Bàn', 48],['Linh Kiện', 70],['Phụ Kiện', 21],['Thiết Bị Lưu Trữ', 15],['Màn Hình', 55]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê tổng doanh thu tháng 12 (đơn vi: triệu vnd)',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 1000,
                    'height': 450
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart'));
                chart.draw(data, options);
            }
        </script>
         <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
                var data = google.visualization.arrayToDataTable([
 ['Country', 'Area(square km)'],['Laptop', 80],['Máy Bàn', 24],['Linh Kiện', 18],['Phụ Kiện', 15],['Thiết Bị Lưu Trữ', 8],['Màn Hình', 22]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê tổng doanh thu phẩm tháng 11(đơn vi: triệu vnd)',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 1000,
                    'height': 450
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart1'));
                chart.draw(data, options);
            }
        </script>
          <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
                var data = google.visualization.arrayToDataTable([
 ['Country', 'Area(square km)'],['Laptop', 95],['Máy Bàn', 23],['Linh Kiện', 35],['Phụ Kiện', 45],['Thiết Bị Lưu Trữ', 21],['Màn Hình', 18]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê tổng doanh thu tháng 10(đơn vi: triệu vnd)',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 1000,
                    'height': 450
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart2'));
                chart.draw(data, options);
            }
        </script> 
         <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
                var data = google.visualization.arrayToDataTable([
 ['Country', 'Area(square km)'],['Laptop', 95],['Máy Bàn', 74],['Linh Kiện', 46],['Phụ Kiện', 22],['Thiết Bị Lưu Trữ', 35],['Màn Hình', 15]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê tổng doanh thu tháng 9(đơn vi: triệu vnd)',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 1000,
                    'height': 450
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart3'));
                chart.draw(data, options);
            }
        </script>
</head>
<body>
	<%@include file="Ad_Header.jsp"%>
	<div class="ts-main-content">
		<%@include file="Ad_LeftMenu.jsp"%>

	</div>
	<div class="container-fluid" style="width: 1099px; height: 1045px;">
		<div class="content">
			<div class="container-fluid">
				<h2>Thống kê doanh thu tháng 12.</h2>
				<ul class="nav nav-tabs">

					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 12 năm 2016</a>
					 <div id="chart"></div>
					</li>
					
					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 11 năm 2016</a>
					 <div id="chart1"></div>
					</li>
					
					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 10 năm 2016</a>
					 <div id="chart2"></div>
					</li>
					
					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 9 năm 2016</a>
					 <div id="chart3"></div>
					</li>
				</ul>

				
			</div>
		</div>
	</div>
</body>
</html>