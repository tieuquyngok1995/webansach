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
 ['Country', 'Area(square km)'],['Laptop', 57],['Máy Bàn', 48],['Linh Kiện', 32],['Phụ Kiện', 36],['Thiết Bị Lưu Trữ', 15],['Màn Hình', 25]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê loại sản phẩm tháng 12',
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
 ['Country', 'Area(square km)'],['Laptop', 45],['Máy Bàn', 35],['Linh Kiện', 24],['Phụ Kiện', 26],['Thiết Bị Lưu Trữ', 12],['Màn Hình', 10]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê loại sản phẩm tháng 11',
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
 ['Country', 'Area(square km)'],['Laptop', 21],['Máy Bàn', 28],['Linh Kiện', 23],['Phụ Kiện', 27],['Thiết Bị Lưu Trữ', 16],['Màn Hình', 8]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê loại sản phẩm tháng 10',
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
 ['Country', 'Area(square km)'],['Laptop', 18],['Máy Bàn', 16],['Linh Kiện', 10],['Phụ Kiện', 12],['Thiết Bị Lưu Trữ', 8],['Màn Hình', 5]
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê loại sản phẩm tháng 9',
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
				<h2>Thống kê loại sản phẩm tiêu thụ tháng 12.</h2>
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