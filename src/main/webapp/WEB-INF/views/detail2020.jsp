<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<style>
table{
	width:100%;
}

input[type=text]{
	border:none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table class="col-md-12">
			<tr>
				<th colspan="2">RouteId</th><td colspan="2"><input type="text" name="ROUTEID" value="${bus.ROUTEID}"></td>
				<th colspan="2">RouteNo</th><td colspan="2"><input type="text" name="ROUTENO" value="${bus.ROUTENO}"></td>
			</tr>
			<tr>
				<th colspan="2">BusStopId</th><td colspan="2"><input type="text" name="BUSSTOPID" value="${bus.BUSSTOPID}"></td>
				<th colspan="2">BusStopARS</th><td colspan="2"><input type="text" name="BUSSTOPARS" value="${bus.BUSSTOPARS}"></td>
			</tr>
			<tr>
				<th colspan="2">BusStopName</th><td colspan="2"><input type="text" name="BUSSTOPNAME" value="${bus.BUSSTOPNAME}"></td>
				<th colspan="2">BusYM</th><td colspan="2"><input type="text" name="BUSYM" value="${bus.BUSYM}"></td>
			</tr>
			<tr>
				<th colspan="2">RouteName</th><td colspan="2"><input type="text" name="ROUTENAME" value="${bus.ROUTENAME}"></td>
				<th colspan="2">PostDate</th><td colspan="2"><input type="text" name="POSTDATE" value="${bus.POSTDATE}"></td>
			</tr>
			<tr>
				<th colspan="4" style="text-align: center;">승차</th>
				<th colspan="4" style="text-align: center;">하차</th>
			</tr>
			<tr>
				<th>00시</th><td><input type="text" name="BUS00ON" value="${bus.BUS00ON}"></td>
				<th>12시</th><td><input type="text" name="BUS12ON" value="${bus.BUS12ON}"></td>
				<th>00시</th><td><input type="text" name="BUS00OFF" value="${bus.BUS00OFF}"></td>
				<th>12시</th><td><input type="text" name="BUS12OFF" value="${bus.BUS12OFF}"></td>
			</tr>
			<tr>
				<th>01시</th><td><input type="text" name="BUS01ON" value="${bus.BUS01ON}"></td>
				<th>13시</th><td><input type="text" name="BUS13ON" value="${bus.BUS13ON}"></td>
				<th>01시</th><td><input type="text" name="BUS01OFF" value="${bus.BUS01OFF}"></td>
				<th>13시</th><td><input type="text" name="BUS13OFF" value="${bus.BUS13OFF}"></td>
			</tr>
			<tr>
				<th>02시</th><td><input type="text" name="BUS02ON" value="${bus.BUS02ON}"></td>
				<th>14시</th><td><input type="text" name="BUS14ON" value="${bus.BUS14ON}"></td>
				<th>02시</th><td><input type="text" name="BUS02OFF" value="${bus.BUS02OFF}"></td>
				<th>14시</th><td><input type="text" name="BUS14OFF" value="${bus.BUS14OFF}"></td>
			</tr>
			<tr>
				<th>03시</th><td><input type="text" name="BUS03ON" value="${bus.BUS03ON}"></td>
				<th>15시</th><td><input type="text" name="BUS15ON" value="${bus.BUS15ON}"></td>
				<th>03시</th><td><input type="text" name="BUS03OFF" value="${bus.BUS03OFF}"></td>
				<th>15시</th><td><input type="text" name="BUS15OFF" value="${bus.BUS15OFF}"></td>
			</tr>
			<tr>
				<th>04시</th><td><input type="text" name="BUS04ON" value="${bus.BUS04ON}"></td>
				<th>16시</th><td><input type="text" name="BUS16ON" value="${bus.BUS16ON}"></td>
				<th>04시</th><td><input type="text" name="BUS04OFF" value="${bus.BUS04OFF}"></td>
				<th>16시</th><td><input type="text" name="BUS16OFF" value="${bus.BUS16OFF}"></td>
			</tr>
			<tr>
				<th>05시</th><td><input type="text" name="BUS05ON" value="${bus.BUS05ON}"></td>
				<th>17시</th><td><input type="text" name="BUS17ON" value="${bus.BUS17ON}"></td>
				<th>05시</th><td><input type="text" name="BUS05OFF" value="${bus.BUS05OFF}"></td>
				<th>17시</th><td><input type="text" name="BUS17OFF" value="${bus.BUS17OFF}"></td>
			</tr>
			<tr>
				<th>06시</th><td><input type="text" name="BUS06ON" value="${bus.BUS06ON}"></td>
				<th>18시</th><td><input type="text" name="BUS18ON" value="${bus.BUS18ON}"></td>
				<th>06</th><td><input type="text" name="BUS06OFF" value="${bus.BUS06OFF}"></td>
				<th>18시</th><td><input type="text" name="BUS18OFF" value="${bus.BUS18OFF}"></td>
			</tr>
			<tr>
				<th>07시</th><td><input type="text" name="BUS07ON" value="${bus.BUS07ON}"></td>
				<th>19시</th><td><input type="text" name="BUS19ON" value="${bus.BUS19ON}"></td>
				<th>07시</th><td><input type="text" name="BUS07OFF" value="${bus.BUS07OFF}"></td>
				<th>19시</th><td><input type="text" name="BUS19OFF" value="${bus.BUS19OFF}"></td>
			</tr>
			<tr>
				<th>08시</th><td><input type="text" name="BUS08ON" value="${bus.BUS08ON}"></td>
				<th>20시</th><td><input type="text" name="BUS20ON" value="${bus.BUS20ON}"></td>
				<th>08시</th><td><input type="text" name="BUS08OFF" value="${bus.BUS08OFF}"></td>
				<th>20시</th><td><input type="text" name="BUS20OFF" value="${bus.BUS20OFF}"></td>
			</tr>
			<tr>
				<th>09시</th><td><input type="text" name="BUS09ON" value="${bus.BUS09ON}"></td>
				<th>21시</th><td><input type="text" name="BUS21ON" value="${bus.BUS21ON}"></td>
				<th>09시</th><td><input type="text" name="BUS09OFF" value="${bus.BUS09OFF}"></td>
				<th>21시</th><td><input type="text" name="BUS21OFF" value="${bus.BUS21OFF}"></td>
			</tr>
			<tr>
				<th>10시</th><td><input type="text" name="BUS10ON" value="${bus.BUS10ON}"></td>
				<th>22시</th><td><input type="text" name="BUS22ON" value="${bus.BUS22ON}"></td>
				<th>10시</th><td><input type="text" name="BUS10OFF" value="${bus.BUS10OFF}"></td>
				<th>22시</th><td><input type="text" name="BUS22OFF" value="${bus.BUS22OFF}"></td>
			</tr>
			<tr>
				<th>11시</th><td><input type="text" name="BUS11ON" value="${bus.BUS11ON}"></td>
				<th>23시</th><td><input type="text" name="BUS23ON" value="${bus.BUS23ON}"></td>
				<th>11시</th><td><input type="text" name="BUS11OFF" value="${bus.BUS11OFF}"></td>
				<th>23시</th><td><input type="text" name="BUS23OFF" value="${bus.BUS23OFF}"></td>
			</tr>
		</table>
		<input type="hidden" name="BID" value="${bus.BID}">
	</form>
</body>
</html>