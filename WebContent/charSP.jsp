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
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',381], ['Asus',182],['Aser',231],['HP',101],['Sony',46],['Vaio',92],['Levono',64]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Laptop tháng 12'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
         <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',185], ['Asus',52],['Aser',114],['HP',27]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart1'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Máy Bàn tháng 12'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
        <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Chip vi xử lý',51], ['Main',21],['Ram',15],['Thùng case',121]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart2'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Linh Kiện tháng 12'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
        <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Chuột',30], ['Bàn phím',18],['Loa',11]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart3'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Phụ Kiện tháng 12'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
         <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',25], ['Samsung',58],['Asus',11],['Aser',17]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart4'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Màn Hình tháng 12'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
         <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',271], ['Asus',150],['Aser',140],['HP',83],['Sony',27],['Vaio',145],['Levono',89]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart5'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Laptop tháng 11'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
         <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',100], ['Asus',72],['Aser',145],['HP',65]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart6'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Máy Bàn tháng 11'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
        <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Chip vi xử lý',50], ['Main',34],['Ram',5],['Thùng case',80]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart7'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Linh Kiện tháng 11'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
        <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Chuột',27], ['Bàn phím',24],['Loa',16]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart8'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Phụ Kiện tháng 11'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
            }
        </script>
        
         <script type="text/javascript">
            //load the Google Visualization API and the chart
            google.load('visualization', '1', {'packages': ['columnchart']});
 
            //set callback
            google.setOnLoadCallback (createChart);
 
            //callback function
            function createChart() {
 
                //create data table object
                var dataTable = new google.visualization.DataTable();
 
                //define columns
                dataTable.addColumn('string','Quarters 2009');
                dataTable.addColumn('number', 'Sản phẩm');
 
                //define rows of data
 dataTable.addRows([['Dell',18], ['Samsung',41],['Asus',31],['Aser',25]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart9'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê các loại Màn Hình tháng 11'};
 
                //draw our chart
                chart.draw(dataTable, options);
 
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
				<h2>Thống kê lượng sản phẩm tiêu thụ tháng 12.</h2>
				<ul class="nav nav-tabs">

					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 12 năm 2016</a>
					 <div id="chart"></div>
					 <div id="chart1"></div>
					 <div id="chart2"></div>
					 <div id="chart3"></div>
					 <div id="chart4"></div>
					</li>
					
					<li class="active"><a data-toggle="tab" href="#">Thời gian: Tháng 11 năm 2016</a>
					 <div id="chart5"></div>
					 <div id="chart6"></div>
					 <div id="chart7"></div>
					 <div id="chart8"></div>
					 <div id="chart9"></div>
					 
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