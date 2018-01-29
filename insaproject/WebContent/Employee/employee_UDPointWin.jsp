<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script> <!-- js중첩되면 drop메뉴 안먹음 -->
<!-- 부트스트랩 셀렉트사용 CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<!-- 부트스트랩 셀렉트사용 JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<title>employee_UDPointWin</title>
</head>
<body>
	<div id='employee_UDPointWin'>
		<div class='panel panel-primary'>
			<div class='panel-heading'><i class='glyphicon glyphicon-upload' style='margin-right:10px;'></i>상벌 등록</div>
			<div class='panel-body'>
			
				<div class='form-group col-ms-6 col-xs-6'>
					<div class='input-group'>
						<span class='input-group-addon'><i class="glyphicon glyphicon-flag" style='margin-right:10px;'></i>분류</span>
						<select class="selectpicker show-tick" data-width="100px">
							<option disabled selected>상/벌점</option>
							<option value=''>상점</option>
							<option value=''>벌점</option>
						</select>
					</div>
				</div>
				<div class='form-group col-ms-6 col-xs-6'>
					<div class='input-group'>
						<input type='text' class='form-control' name='findStr'/>
						<label class='input-group-addon' id='search'><i class='glyphicon glyphicon-search'></i></label>
					</div>
				</div>
				<table class='table table-striped'>
						<thead>
							<tr>
								<th>분류</th>
								<th>상벌 코드</th>
								<th>상벌명</th>
								<th>점수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>상점</td>
								<td><a href='#'>C001</a></td>
								<td>쓰레기줍기</td>
								<td>10점</td>
							</tr>
							<tr>
								<td>벌점</td>
								<td><a href='#'>C002</a></td>
								<td>지각</td>
								<td>10점</td>
							</tr>
							<tr>
								<td>벌점</td>
								<td><a href='#'>C003</a></td>
								<td>전력낭비</td>
								<td>10점</td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$("#employee_UDPointWin #search").click(function(){ //검색 누르기
		alert("검색");
	});
});
</script>
</html>