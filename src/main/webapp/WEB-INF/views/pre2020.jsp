<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
		 location.href = "/";
	})
	
	$('#MH_btn').click(function(){
		location.href = "/pre2020";
	})
	
	$('#myTable').DataTable({
	    "ajax": "/test",
	    "pageLength" : 20,
	    "bAutoWidth": true,
	    "columns": [
	    	{"data": "busym"},
	    	{"data": "routeid"},
	    	{"data": "routeno"},
	    	{"data": "routename"},
	    	{"data": "busstopid"},
	    	{"data": "busstopars"},
	    	{"data": "busstopname"},
	    	{"data": "bus00ON"},
	    	{"data": "bus00OFF"},
	    	{"data": "bus01ON"},
	    	{"data": "bus01OFF"},
	    	{"data": "bus02ON"},
	    	{"data": "bus02OFF"},
	    	{"data": "bus03ON"},
	    	{"data": "bus03OFF"},
	    	{"data": "bus04ON"},
	    	{"data": "bus04OFF"},
	    	{"data": "bus05ON"},
	    	{"data": "bus05OFF"},
	    	{"data": "bus06ON"},
	    	{"data": "bus06OFF"},
	    	{"data": "bus07ON"},
	    	{"data": "bus07OFF"},
	    	{"data": "bus08ON"},
	    	{"data": "bus08OFF"},
	    	{"data": "bus09ON"},
	    	{"data": "bus09OFF"},
	    	{"data": "bus10ON"},
	    	{"data": "bus10OFF"},
	    	{"data": "bus11ON"},
	    	{"data": "bus11OFF"},
	    	{"data": "bus12ON"},
	    	{"data": "bus12OFF"},
	    	{"data": "bus13ON"},
	    	{"data": "bus13OFF"},
	    	{"data": "bus14ON"},
	    	{"data": "bus14OFF"},
	    	{"data": "bus15ON"},
	    	{"data": "bus15OFF"},
	    	{"data": "bus16ON"},
	    	{"data": "bus16OFF"},
	    	{"data": "bus17ON"},
	    	{"data": "bus17OFF"},
	    	{"data": "bus18ON"},
	    	{"data": "bus18OFF"},
	    	{"data": "bus19ON"},
	    	{"data": "bus19OFF"},
	    	{"data": "bus20ON"},
	    	{"data": "bus20OFF"},
	    	{"data": "bus21ON"},
	    	{"data": "bus21OFF"},
	    	{"data": "bus22ON"},
	    	{"data": "bus22OFF"},
	    	{"data": "bus23ON"},
	    	{"data": "bus23OFF"},
	    	{"data": "postdate"}	    	
	    ]
	} );
})
</script>
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
			<button class="btn-primary" id="CS_btn">2020년 버스 승하차인원</button>
			<button class="btn-success" id="MH_btn">2020년 이전 버스 승하차인원 </button>
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
