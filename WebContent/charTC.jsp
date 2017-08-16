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
                dataTable.addColumn('number', 'Lượng truy cập');
 
                //define rows of data
                dataTable.addRows([['Lượng truy cập', 752], ['Lượt đăng nhập',556],['Lượt mua hàng',370]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê lượng truy cập tháng 12'};
 
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
                dataTable.addColumn('number', 'Lượng truy cập');
 
                //define rows of data
                dataTable.addRows([['Lượng truy cập', 672], ['Lượt đăng nhập',391],['Lượt mua hàng',250]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart1'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê lượng truy cập tháng 11'};
 
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
                dataTable.addColumn('number', 'Lượng truy cập');
 
                //define rows of data
                dataTable.addRows([['Lượng truy cập', 462], ['Lượt đăng nhập',266],['Lượt mua hàng',200]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart2'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê lượng truy cập tháng 10'};
 
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
                dataTable.addColumn('number', 'Lượng truy cập');
 
                //define rows of data
                dataTable.addRows([['Lượng truy cập', 351], ['Lượt đăng nhập',216],['Lượt mua hàng',145]]);
 
                //instantiate our chart object
                var chart = new google.visualization.ColumnChart (document.getElementById('chart3'));
 
                //define options for visualization
                var options = {width: 1000, height: 450, is3D: true, title: 'Thống kê lượng truy cập tháng 9'};
 
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
				<h2>Thống kê lượng người truy cập.</h2>
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