<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript"
	src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript"
	src="http://www.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript"
	src="http://www.amcharts.com/lib/3/themes/none.js"></script>
<title>Insert title here</title>
<style>
.
#chartdiv {
	width: 100%;
	height: 500px;
	font-size: 11px;
}
</style>
<script>
	var chart = AmCharts.makeChart("chartdiv", {
		"type" : "pie",
		"theme" : "none",
		"dataProvider" : [ {
			"country" : "Lithuania",
			"litres" : 501.9
		}, {
			"country" : "Czech Republic",
			"litres" : 301.9
		}, {
			"country" : "Ireland",
			"litres" : 201.1
		}, {
			"country" : "Germany",
			"litres" : 165.8
		}, {
			"country" : "Australia",
			"litres" : 139.9
		}, {
			"country" : "Austria",
			"litres" : 128.3
		}, {
			"country" : "UK",
			"litres" : 99
		}, {
			"country" : "Belgium",
			"litres" : 60
		}, {
			"country" : "The Netherlands",
			"litres" : 50
		} ],
		"valueField" : "litres",
		"titleField" : "country",
		"exportConfig" : {
			menuItems : [ {
				icon : '/lib/3/images/export.png',
				format : 'png'
			} ]
		}
	});
</script>
</head>
<body>
	<div id="chartdiv"></div>
</body>
</html>