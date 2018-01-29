<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script> <!-- js중첩되면 drop메뉴 안먹음 -->
<title>employee_eduWin</title>
</head>
<body>
	<div id='employee_eduWin'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-upload' style='margin-right:10px;'></i>교육연수 등록</div>
				<div class='panel-body'>
				
					<div class='input-group'>
						<span class='input-group-addon'>연수명</span>
						<input type='text' class='form-control' name='findStr'/>
						<label class='input-group-addon' id='search'><i class='glyphicon glyphicon-search'></i></label>
					</div>
					<table class='table table-striped'>
						<thead>
							<tr>
								<th>교육연수 코드</th>
								<th>교육연수명</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href='#'>B001</a></td>
								<td>야근이 매출에 끼치는 영향</td>
							</tr>
							<tr>
								<td><a href='#'>B002</a></td>
								<td>리더쉽이란? 좋은상사되기</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$("#employee_eduWin #search").click(function(){ //검색 누르기
		alert("검색");
	});
});
</script>
</html>