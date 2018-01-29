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
<title>department_form</title>
</head>
<body>
	<div id='department_form'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>부서 리스트</div>
				<div class='panel-body'>
					<!-- 폼 -->
					<form name='frm_departmentForm' method='post'>
						<div class='pull-right'>
							<div class='input-group'>
								<select class="selectpicker show-tick" data-width="150px">
									<!-- 데이터를 기반으로 부서들이 나오는곳 -->
									<option disabled selected>상위부서</option>
									<option>*</option>
									<option>기회조정실</option>
									<option>영업부</option>
									<option>경영부</option>
									<option>상품본부</option>
									<option>인사총부과</option>
								</select>
								<button type='button' class='form-control btn btn-primary' id='btnFind'>검색</button>
							</div>
						</div>
					</form>
					<table class='table table-striped'>
						<thead>
							<tr>
								<th>부서코드</th>
								<th>부서명</th>
								<th>상위부서</th>
								<th>담당자</th>
								<th>내선번호</th>
								<th>비고(부서인원)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href='#'>V701</a></td>
								<td>기획조정실</td>
								<td>이사회</td>
								<td>신인환</td>
								<td>05)224-341</td>
								<td>8명</td>
							</tr>
							<tr>
								<td><a href='#'>V702</a></td>
								<td>경영부</td>
								<td>주주총회</td>
								<td>박거배</td>
								<td>05)224-341</td>
								<td>8명</td>
							</tr>
							<tr>
								<td><a href='#'>V703</a></td>
								<td>인사총부과</td>
								<td>이사화</td>
								<td>팔동희</td>
								<td>05)224-341</td>
								<td>8명</td>
							</tr>
							<tr>
								<td><a href='#'>V704</a></td>
								<td>경영부</td>
								<td>이사회</td>
								<td>오징인제</td>
								<td>05)224-341</td>
								<td>8명</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class='panel panel-default'>
				<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>항목등록</div>
				<div class='panel-body'>
					<!-- 폼 -->
					<form name='frm_department' method='post'>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>상위부서</label>
								<select class="selectpicker show-tick" data-width="150px">
									<option disabled selected>상위부서</option>
									<!-- 부서등록 데이터를 기반으로 나오는 곳 -->
									<option>기회조정실</option>
									<option>영업부</option>
									<option>경영부</option>
									<option>상품본부</option>
									<option>인사총부과</option>
								</select>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-asterisk' style='margin-right:10px;'></i>부서명</label>
								<input type='text' class='form-control' name='licenseName'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>담당자</label>
								<input type='text' class='form-control' name='damdangName'/>
								<label class='input-group-addon' id='search'><i class='glyphicon glyphicon-search'></i></label>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>내선번호</label>
								<input type='text' class='form-control' name='deptCall'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>비고(부서인원)</label>
								<input type='text' class='form-control' name='empCount'/>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' class='btn btn-success' id='btnConfirm'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
								<button type='button' class='btn btn-success'id='btnModify'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
								<button type='button' class='btn btn-warning'id='btnDelete'><span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
document.getElementById("search").onclick = function() { //담당자 검색
	alert("담당자 검색");
}

document.getElementById("btnDelete").onclick = function() { //삭제버튼
	confirm("정말삭제하시겠습니까?");
}

</script>
</html>