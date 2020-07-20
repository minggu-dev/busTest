<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function excelLoad(event){
	var input = event.target;
	var reader = new FileReader();
	reader.onload = function(){
		var fileData = reader.result;
		var wb = XLSX.read(fileData, {type : 'binary'});
		var sheetNameList = wb.SheetNames;
		var firstSheet = wb.Sheets[sheetNameList[0]];
		data = XLSX.utils.sheet_to_json(firstSheet);
		$("#myTable").DataTable({
		    pageLength : 10,
		    data : data,
		    columns :[
		    	{"data": "busym"},
		    	{"data": "routeid"},
		    	{"data": "routeno"},
		    	{"data": "routename"},
		    	{"data": "busstopid"},
		    	{"data": "busstopars"},
		    	{"data": "busstopname"},
		    	{"data": "bus00on"},
		    	{"data": "bus00off"},
		    	{"data": "bus01on"},
		    	{"data": "bus01off"},
		    	{"data": "bus02on"},
		    	{"data": "bus02off"},
		    	{"data": "bus03on"},
		    	{"data": "bus03off"},
		    	{"data": "bus04on"},
		    	{"data": "bus04off"},
		    	{"data": "bus05on"},
		    	{"data": "bus05off"},
		    	{"data": "bus06on"},
		    	{"data": "bus06off"},
		    	{"data": "bus07on"},
		    	{"data": "bus07off"},
		    	{"data": "bus08on"},
		    	{"data": "bus08off"},
		    	{"data": "bus09on"},
		    	{"data": "bus09off"},
		    	{"data": "bus10on"},
		    	{"data": "bus10off"},
		    	{"data": "bus11on"},
		    	{"data": "bus11off"},
		    	{"data": "bus12on"},
		    	{"data": "bus12off"},
		    	{"data": "bus13on"},
		    	{"data": "bus13off"},
		    	{"data": "bus14on"},
		    	{"data": "bus14off"},
		    	{"data": "bus15on"},
		    	{"data": "bus15off"},
		    	{"data": "bus16on"},
		    	{"data": "bus16off"},
		    	{"data": "bus17on"},
		    	{"data": "bus17off"},
		    	{"data": "bus18on"},
		    	{"data": "bus18off"},
		    	{"data": "bus19on"},
		    	{"data": "bus19off"},
		    	{"data": "bus20on"},
		    	{"data": "bus20off"},
		    	{"data": "bus21on"},
		    	{"data": "bus21off"},
		    	{"data": "bus22on"},
		    	{"data": "bus22off"},
		    	{"data": "bus23on"},
		    	{"data": "bus23off"},
		    	{"data": "postdate"}	    	
	    ]
		});
	}
	reader.readAsBinaryString(input.files[0]);
	
}
$(function(){
	$('#upload').click(function(){
		$.ajax({
			url : "/upload2020",
			data : {
				jsonObj : JSON.stringify(data)
			},
			method : "post",
			success : function(){
				alert('등록 성공');
			},
			error : function(){
				alert('등록 실패');
			}
		})
	})
})
</script>
</head>
<body>
	파일 선택 : <input type="file" onchange="excelLoad(event)"> &nbsp;&nbsp;&nbsp;<input type="button" id="upload" value="업로드">
	<table id="myTable" class="display">
	    <thead>
	        <tr>
	        	<th>사용년월</th><th>노선ID</th><th>노선번호</th><th>노선명</th><th>표준버스정류장ID</th><th>버스정류장ARS번호</th><th>역명</th><th>00시승차총승객수</th><th>00시하차총승객수</th><th>1시승차총승객수</th><th>1시하차총승객수</th><th>2시승차총승객수</th><th>2시하차총승객수</th><th>3시승차총승객수</th><th>3시하차총승객수</th><th>4시승차총승객수</th><th>4시하차총승객수</th><th>5시승차총승객수</th><th>5시하차총승객수</th><th>6시승차총승객수</th><th>6시하차총승객수</th><th>7시승차총승객수</th><th>7시하차총승객수</th><th>8시승차총승객수</th><th>8시하차총승객수</th><th>9시승차총승객수</th><th>9시하차총승객수</th><th>10시승차총승객수</th><th>10시하차총승객수</th><th>11시승차총승객수</th><th>11시하차총승객수</th><th>12시승차총승객수</th><th>12시하차총승객수</th><th>13시승차총승객수</th><th>13시하차총승객수</th><th>14시승차총승객수</th><th>14시하차총승객수</th><th>15시승차총승객수</th><th>15시하차총승객수</th><th>16시승차총승객수</th><th>16시하차총승객수</th><th>17시승차총승객수</th><th>17시하차총승객수</th><th>18시승차총승객수</th><th>18시하차총승객수</th><th>19시승차총승객수</th><th>19시하차총승객수</th><th>20시승차총승객수</th><th>20시하차총승객수</th><th>21시승차총승객수</th><th>21시하차총승객수</th><th>22시승차총승객수</th><th>22시하차총승객수</th><th>23시승차총승객수</th><th>23시하차총승객수</th><th>등록일자</th>
	        </tr>
	    </thead>
	    <tbody>
	    </tbody>
	</table>
</body>
</html>