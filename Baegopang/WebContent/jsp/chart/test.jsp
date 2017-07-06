<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/dark.js"></script>
<title>Insert title here</title>
<!-- Styles -->
<style>
#monthlySales {
background-color: #30303d; color: #fff; 
  width: 80%;
  height: 80%;
}	
#monthlySalesDiv{
	width: 500px;
	height: 500px;
}
</style>
<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "monthlySales",  {
	"type": "serial",
	"addClassNames": true,
	"theme": "dark",
	"autoMargins": true,
	"marginLeft": 30,
	"marginRight": 8,
	"marginTop": 10,
	"marginBottom": 26,
	"balloon": {
		"adjustBorderColor": false,
		"horizontalPadding": 10,
		"verticalPadding": 8,
		"color": "#ffffff"
	},
	"dataProvider": 
			$.getJSON({
				type:"get",
				url:"data.json",
				dataType:"json",
				success:function(result){
					return result;
				}
			}),
	"valueAxes": [ {
			"axisAlpha": 0,
			"position": "left"
	} ],
	"startDuration": 1, "graphs": [ {
							"alphaField": "alpha",
							"balloonText": "|<span style='font-size:12px;'>[[category]][[title]]| <br><span style='font-size:20px;'>[[value]]</span> [[additional]] ¿ø</span>",
							"fillAlphas": 1,
							"title": "sales",
							"type": "column",
							"valueField": "sales",
							"dashLengthField": "dashLengthColumn"
	}],
	"categoryField": "month",
	"categoryAxis": {
			"gridPosition": "start",
			"axisAlpha": 0,
			"tickLength": 0
	}
});
</script>
</head>
<body>
<div id="monthlySalesDiv">
	<div id="monthlySales" class="monthlySales">
	</div>
</div>
</body>
</html>




