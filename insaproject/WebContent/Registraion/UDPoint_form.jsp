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
<title>UDPoint_form</title>
</head>
<body>
	<div id='UDPoint_form'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>상벌점 리스트	</div>
				<div class='panel-body'>
				
				 	 <!-- 폼 -->
					<form name='frm_UDPoint1' method='post'>
						<div class='pull-right'>
							<div class='input-group'>
								<select class="selectpicker show-tick" data-width="150px">
								  <option disabled selected>분류</option>
								  <option>상점</option>
								  <option>벌점</option>
								</select>
								<button type='button' class='form-control btn btn-primary' id='btnFind'>검색</button>
							</div>
						</div>
					</form>
					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>분류</th>
								<th>코드</th>
								<th>내용</th>
								<th>점수</th>
							</tr>
						</thead>
						<!-- 데이터를 기반으로 반복될 부분 -->
						<tbody>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>상점</td>
								<td><a href='#'>A101</a></td>
								<td>쓰레기줍기</td>
								<td>100점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>벌점</td>
								<td><a href='#'>A102</a></td>
								<td>지각</td>
								<td>50점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>상점</td>
								<td><a href='#'>A103</a></td>
								<td>야근</td>
								<td>10점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>벌점</td>
								<td><a href='#'>A104</a></td>
								<td>무단조퇴</td>
								<td>50점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>벌점</td>
								<td><a href='#'>A105</a></td>
								<td>지각</td>
								<td>50점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>상점</td>
								<td><a href='#'>A106</a></td>
								<td>잔업</td>
								<td>20점</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>벌점</td>
								<td><a href='#'>A107</a></td>
								<td>A4용지 무단사용</td>
								<td>70점</td>
							</tr>
						</tbody>
					</table>
					<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
						<button class='btn btn-default' id='page1'>◁</button>
						<button class='btn btn-default' id='page1'>1</button>
						<button class='btn btn-default' id='page1'>2</button>
						<button class='btn btn-default' id='page1'>3</button>
						<button class='btn btn-default' id='page1'>▷</button>
					</div>					
				</div>
			</div>
			<div class='panel panel-default'>
				<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>항목 등록</div>
				
				 <!-- 폼 -->
				<form name='frm_UDPoint2' method='post'>
					<div class='panel-body'>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<span class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>분류</span>
								<select class="selectpicker show-tick" data-width="150px">
									<option disabled selected>분류</option>
									<option>상점</option>
									<option>벌점</option>
								</select>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<span class='input-group-addon'><i class='glyphicon glyphicon-plus' style='margin-right:10px;'></i>점수</span>
								<input type='text' class='form-control' name='point'/>
							</div>
						</div>
						<div class='form-group col-md-12 col-xs-12'>
							<div class='input-group'>
								<span class='input-group-addon'><i class='glyphicon glyphicon-grain' style='margin-right:10px;'></i>내용</span>
								<input type='text' class='form-control' name='content'/>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' class='btn btn-success' id='btnConfirm'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
								<button type='button' class='btn btn-success'id='btnModify'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
								<button type='button' class='btn btn-warning'id='btnDelete'><span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
document.getElementById("btnDelete").onclick = function() {
	confirm("정말 삭제 하시겠습니까?");
}
</script>
</html>