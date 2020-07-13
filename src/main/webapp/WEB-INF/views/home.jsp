<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

<head>
<title>Home</title>
<script>
$(function(){
	$('#CS_btn').click(function(){
		alert("cs");
	})
	
	$('#MH_btn').click(function(){
		alert("mh");
	})
	var data = [
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Tiger Nixon",
	        "System Architect",
	        "Edinburgh",
	        "5421",
	        "2011/04/25",
	        "$3,120"
	    ],
	    [
	        "Garrett Winters",
	        "Director",
	        "Edinburgh",
	        "8422",
	        "2011/07/25",
	        "$5,300"
	    ]
	]
	
	$('#myTable').DataTable({
	    data: data
	} );
})
</script>
<style>
	th, td{
		width:100px;
	}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1>
				버스
			</h1>
		</div>
		<div class="col-md-12">
			<button class="btn-primary" id="CS_btn">기능1</button>
			<button class="btn-success" id="MH_btn">기능2</button>
		</div>
		
		<table id="myTable" class="display">
		    <thead>
		        <tr>
		        	<th>사용년월</th><th>노선ID</th><th>노선번호</th><th>노선명</th><th>표준버스정류장ID</th><th>버스정류장ARS번호</th><th>역명</th><th>00시승차총승객수</th><th>00시하차총승객수</th><th>1시승차총승객수</th><th>1시하차총승객수</th><th>2시승차총승객수</th><th>2시하차총승객수</th><th>3시승차총승객수</th><th>3시하차총승객수</th><th>4시승차총승객수</th><th>4시하차총승객수</th><th>5시승차총승객수</th><th>5시하차총승객수</th><th>6시승차총승객수</th><th>6시하차총승객수</th><th>7시승차총승객수</th><th>7시하차총승객수</th><th>8시승차총승객수</th><th>8시하차총승객수</th><th>9시승차총승객수</th><th>9시하차총승객수</th><th>10시승차총승객수</th><th>10시하차총승객수</th><th>11시승차총승객수</th><th>11시하차총승객수</th><th>12시승차총승객수</th><th>12시하차총승객수</th><th>13시승차총승객수</th><th>13시하차총승객수</th><th>14시승차총승객수</th><th>14시하차총승객수</th><th>15시승차총승객수</th><th>15시하차총승객수</th><th>16시승차총승객수</th><th>16시하차총승객수</th><th>17시승차총승객수</th><th>17시하차총승객수</th><th>18시승차총승객수</th><th>18시하차총승객수</th><th>19시승차총승객수</th><th>19시하차총승객수</th><th>20시승차총승객수</th><th>20시하차총승객수</th><th>21시승차총승객수</th><th>21시하차총승객수</th><th>22시승차총승객수</th><th>22시하차총승객수</th><th>23시승차총승객수</th><th>23시하차총승객수</th><th>등록일자</th>
		        </tr>
		    </thead>
		    <tbody>
		    </tbody>
		</table>
	</div>
</div>
</body>
</html>
