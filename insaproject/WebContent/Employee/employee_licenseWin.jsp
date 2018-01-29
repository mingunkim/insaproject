<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script> <!-- js중첩되면 drop메뉴 안먹음 -->
<title>employee_licenseWin</title>
</head>
<body>
	<div id='employee_licenseWin'>
		<div class='panel panel-primary'>
			<div class='panel-heading'><i class='glyphicon glyphicon-upload' style='margin-right:10px;'></i>자격증 등록</div>
			<div class='panel-body'>
			
				<div class='input-group'>
					<span class='input-group-addon'>자격증명</span>
					<input type='text' class='form-control' name='findStr'/>
					<label class='input-group-addon' id='search'><i class='glyphicon glyphicon-search'></i></label>
				</div>
				<table class='table table-striped'>
					<thead>
						<tr>
							<th>자격증 코드</th>
							<th>자격증명</th>
							<th>가산점</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href='#'>A001</a></td>
							<td>정보처리 산업기사</td>
							<td>5점</td>
						</tr>
						<tr>
							<td><a href='#'>A002</a></td>
							<td>정보처리 기사</td>
							<td>15점</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$("#employee_licenseWin #search").click(function(){ //검색 누르기
		alert("검색");
	});
});
</script>
</html>