<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- datePicker css -->
<link href="/insaproject/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script><!-- 부트스트랩 js중첩되면 드랍안먹음 -->
<!-- datePicker js -->
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.ko.js"></script>
<title>edu_form</title>
<style>
#edu_form #list .form-group input[type="checkbox"] {
    display: none;
}

#edu_form #list .form-group input[type="checkbox"] + .btn-group > label span {
    width: 20px;
}

#edu_form #list .form-group input[type="checkbox"] + .btn-group > label span:first-child {
    display: none;
}
#edu_form #list .form-group input[type="checkbox"] + .btn-group > label span:last-child {
    display: inline-block;   
}

#edu_form #list .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
    display: inline-block;
}
#edu_form #list .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
    display: none;   
}
</style>
</head>
<body>
	<div id='edu_form'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>교육 항목등록</div>
				<div class='panel-body'>
					<div class='form-group col-md-5 col-xs-5'>
						<form name='frm_eduList' method='post'>
							<label>내용</label>
							<div class='form-group'>
								<div class='input-group'>
									<label class='input-group-addon'><i class='glyphicon glyphicon-book' style='margin-right:10px;'></i>교육연수명</label>
									<input type='text' name='curriculumName' class='form-control'/>
								</div>
							</div>
							<div class='form-group'>
								<div class='input-group'>
									<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="openDat" data-link-format="yyyy-mm-dd">
										<label class='input-group-addon'><i class='glyphicon glyphicon-log-in' style='margin-right:10px;'></i>시작일</label>
										<input type='text' class='form-control' readonly/>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type='hidden' id='openDat' name='openDat'/> <!-- 날짜들어오는 부분 -->
								</div>
							</div>
							<div class='form-group'>
								<div class='input-group'>
									<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="closeDay" data-link-format="yyyy-mm-dd">
										<label class='input-group-addon'><i class='glyphicon glyphicon-log-out' style='margin-right:10px;'></i>종료일</label>
										<input type='text' class='form-control' readonly/>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type='hidden' id='closeDay' name='closeDay'/> <!-- 날짜들어오는 부분 -->
								</div>
							</div>
							<div class='form-group'>
								<div class='input-group'>
									<label class='input-group-addon'><i class='glyphicon glyphicon-object-align-right' style='margin-right:10px;'></i>연수위치</label>
									<input type='text' name='address1' class='form-control'/>
								</div>
							</div>
							<div class='form-group'>
								<div class='input-group'>
									<label class='input-group-addon'><i class='glyphicon glyphicon-home' style='margin-right:10px;'></i>상세주소</label>
									<input type='text' name='address2' class='form-control'/>
								</div>
							</div>
							<div class='form-group'>
							  <label for='content'>교육내용:</label>
							  <textarea class='form-control' rows='5' name='content'></textarea>
							</div>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' class='btn btn-success' id='btnConfirm'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
							</div>	
						</form>
					</div>
					
					<div class='from-group col-md-2 col-xs-2'>
						<div class='btn-group-vertical form-control' style='margin-left:15px; margin-top:160px; border:0px; box-shadow:none;'>
							<button type='button' class='btn btn-primary' id='btnInsert'>등록<span class='glyphicon glyphicon-menu-right' style='margin-left:10px;'></span></button>
							<button type='button' class='btn btn-primary' id='btnDelete'><span class='glyphicon glyphicon-menu-left' style='margin-right:10px;'></span>삭제</button>
						</div>
					</div>
					
					<div class='form-group col-md-5 col-xs-5'>
						<div class='col-ms-12 col-xs-12'>
							<label>등록 리스트</label>
						</div>
						<div class='col-ms-2 col-xs-2'>
							<!-- 오른쪽화살표를 누르면 늘어나야 하는 부분 -->
							<select size='20'>
								<option value=''>리더쉽과 회사매출의 상관관계</option>
								<option value=''>회사내규율</option>
								<option value=''>능동적인 마인드가지기</option>
								<option value=''>리더쉽과 회사매출의 상관관계</option>
								<option value=''>회사내규율</option>
								<option value=''>능동적인 마인드가지기</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class='panel panel-default' id='list'>
				<div class='panel-heading'><span class='glyphicon glyphicon-list' style='margin-right:10px;'></span>교육 항목 리스트</div>
				<div class='panel-body'>
					<div class='form-group col-ms-12 col-xs-12'>
						<div class="form-group col-ms-2 col-xs-2">
				            <input type="checkbox" name="fancy-checkbox-success" id="fancy-checkbox-success1" autocomplete="off" />
				            <div class="btn-group">
				                <label for="fancy-checkbox-success1" class="btn btn-info">
				                    <span class="glyphicon glyphicon-ok"></span>
				                    <span> </span>
				                </label>
				                <label for="fancy-checkbox-success1" class="btn btn-default active">
									최근순	
				                </label>
				            </div>
				        </div>
				        <div class="form-group col-ms-2 col-xs-2">
				            <input type="checkbox" name="fancy-checkbox-success" id="fancy-checkbox-success2" autocomplete="off" />
				            <div class="btn-group">
				                <label for="fancy-checkbox-success2" class="btn btn-info">
				                    <span class="glyphicon glyphicon-ok"></span>
				                    <span> </span>
				                </label>
				                <label for="fancy-checkbox-success2" class="btn btn-default active">
									마감순	
				                </label>
				            </div>
				        </div>
				        <div class='form-group col-ms-3 col-xs-3'>
				        	<div class='input-group'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="eduSDate" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-align-left' style='margin-right:10px;'></i>시작일</label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='eduSDate' name='eduSDate'/> <!-- 날짜들어오는 부분 -->
							</div>
				        </div>
				        <div class='form-group col-ms-3 col-xs-3'>
				        	<div class='input-group'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="eduEDate" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-align-right' style='margin-right:10px;'></i>종료일</label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='eduEDate' name='eduEDate'/> <!-- 날짜들어오는 부분 -->
							</div>
				        </div>
				        <div class='form-group col-ms-2 col-xs-2'>
				        	<button class='btn btn-info form-control' id='btnSearch'>검색</button>
				        </div>
					</div>
					<table class='table table-striped'>
						<thead>
							<tr>
								<th>연수코드</th>
								<th>교육연수 명</th>
								<th>시작일</th>
								<th>종료일</th>
								<th>연수위치</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<a href='#'>K1002</a>
								</td>
								<td>리더쉽이 매출에 끼치는 영향</td>
								<td>2017/03/12</td>
								<td>2017/03/28</td>
								<td>경기도 안양시</td>
							</tr>
							<tr>
								<td>
									<a href='#'>K1003</a>
								</td>
								<td>야근? 조기출근? 경영진의 선택</td>
								<td>2017/04/02</td>
								<td>2017/04/18</td>
								<td>서울시 강서구</td>
							</tr>
							<tr>
								<td>
									<a href='#'>K1004</a>
								</td>
								<td>인문학과 경영</td>
								<td>2017/05/24</td>
								<td>2017/06/08</td>
								<td>서울시 종로구</td>
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
		</div>
	</div>
</body>
<script>
$('#edu_form .form_date').datetimepicker({ // datePicker 설정
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
</script>
</html>