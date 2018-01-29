<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- datePicker css -->
<link href="/insaproject/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<!-- datePicker js -->
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.ko.js"></script>

<title>employee_list</title>
</head>
<body>
	<div id='employee_list'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-search' style='margin-right:10px;'></i>사원조회</div>
				<div class='panel-body'>
				
					<!-- 폼 -->
					<form name='frm_employee' method='post'>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-user' style='margin-right:10px;'></i>사원명</label>
								<input type='text' class='form-control' name='employeeName'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group department'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-object-align-right' style='margin-right:10px;'></i>부서</label>
								<input type='text' class='form-control' name='department'/>
								<span class='input-group-addon'><i class='glyphicon glyphicon-search'></i></span>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group position'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-king' style='margin-right:10px;'></i>직급</label>
								<input type='text' class='form-control' name='position'/>
								<span class='input-group-addon'><i class='glyphicon glyphicon-search'></i></span>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group license'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-asterisk' style='margin-right:10px;'></i>자격증</label>
								<input type='text' class='form-control' name='license'/>
								<span class='input-group-addon'><i class='glyphicon glyphicon-search'></i></span>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group edu' >
								<label class='input-group-addon'><i class='glyphicon glyphicon-education' style='margin-right:10px;'></i>교육연수</label>
								<input type='text' class='form-control' name='edu'/>
								<span class='input-group-addon'><i class='glyphicon glyphicon-search'></i></span>
							</div>
						</div>
						
						<div class='form-group col-md-12 col-xs-12'>
							<div class='form-group col-md-6 col-xs-6' style='padding-left:0; margin-bottom:0'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="hireDateF" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-briefcase' style='margin-right:10px;'></i>입사일<span style='font-size:8pt; color:#bf248e; margin-left:3px;'>(시작일)</span></label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='hireDateF' name='hireDateF'/> <!-- 날짜들어오는 부분 -->
							</div>
							<div class='form-group col-md-6 col-xs-6' style='padding-right:0; margin-bottom:0'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="hireDateB" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-briefcase' style='margin-right:10px;'></i>입사일<span style='font-size:8pt; color:#bf248e; margin-left:3px;'>(종료일)</span></label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='hireDateB' name='hireDateB'/> <!-- 날짜들어오는 부분 -->
							</div>
						</div>
						
						<div class='form-group col-md-12 col-xs-12'>
							<div class='form-group col-md-6 col-xs-6' style='padding-left:0; margin-bottom:0'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="birthDateF" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-gift' style='margin-right:10px;'></i>생년월일<span style='font-size:8pt; color:#bf248e; margin-left:3px;'>(시작일)</span></label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='birthDateF' name='birthDateF'/> <!-- 날짜들어오는 부분 -->
							</div>
							<div class='form-group col-md-6 col-xs-6' style='padding-right:0; margin-bottom:0'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="birthDateB" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-gift' style='margin-right:10px;'></i>생년월일<span style='font-size:8pt; color:#bf248e; margin-left:3px;'>(종료일)</span></label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='birthDateB' name='birthDateB'/> <!-- 날짜들어오는 부분 -->
							</div>
						</div>
						
						<div class='form-group'>
							<div class='col-md-2 col-xs-4'>
								<button type='button' class='form-control btn btn-success' id='btnFind'><span class='glyphicon glyphicon-search' style='margin-right:10px;'></span>검색</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class='panel panel-default'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>사원리스트</div>
				<div class='panel-body'>
					<!-- 테이블 리스트 -->
				<table class='table table-striped'>
					<thead>
						<tr>
							<th>순번</th>
							<th>코드</th>
							<th>사원명</th>
							<th>부서</th>
							<th>직위</th>
							<th>자격증</th>
							<th>교육연수</th>
							<th>입사일</th>
							<th>생년월일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>
								<a href='/insaproject/index.jsp?inc=./Employee/employee_view.jsp'>1703121111</a>
							</td>
							<td>김민건</td>
							<td>영업1팀</td>
							<td>팀장</td>
							<td>한국사1급</td>
							<td>이것저것많이</td>
							<td>2017-03-12</td>
							<td>1991-03-12</td>
						</tr>
						<tr>
							<td>2</td>
							<td>
								<a href='/insaproject/index.jsp?inc=./Employee/employee_view.jsp'>1608223333</a>
							</td>
							<td>신인환</td>
							<td>기획조정실</td>
							<td>대리</td>
							<td>고양이돌보기1급</td>
							<td>저것이것많이</td>
							<td>2016-08-22</td>
							<td>1989-07-18</td>
						</tr>
						<tr>
							<td>3</td>
							<td>
								<a href='/insaproject/index.jsp?inc=./Employee/employee_view.jsp'>1709224444</a>
							</td>
							<td>장인제</td>
							<td>영업3팀</td>
							<td>팀장</td>
							<td>습관고치기2급</td>
							<td>이거저거이거많이</td>
							<td>2017-09-24</td>
							<td>1991-07-16</td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$('#employee_list .form_date').datetimepicker({ // datePicker 설정
	language:  'ko',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0,
	format: 'yyyy-mm-dd'
});

$("#employee_list .department").click(function(){ // 부서 검색
	alert("부서");
});

$("#employee_list .position").click(function(){ // 직위 검색
	alert("직위");
});

$("#employee_list .license").click(function(){ // 자격증 검색
	alert("자격증");
});

$("#employee_list .edu").click(function(){ // 교육연수 검색
	alert("교육연수");
});


</script>
</html>