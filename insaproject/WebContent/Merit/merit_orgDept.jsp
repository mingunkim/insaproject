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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script> <!-- js중첩되면 drop메뉴 안먹음 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> card css -->
<!-- datePicker js -->
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.ko.js"></script>

<title>merit_orgDept</title>
</head>
<body>
	<div id='mertiOrgDept'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-list' style='margin-right:15px;'></i>부서평가</div>
				<div class='panel-body'>
					<div class='form-group col-ms-12 col-xs-12'>
						<div class='col-ms-4 col-xs-4'>
							<div class='input-group'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="meritSDate" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-align-left' style='margin-right:10px;'></i>시작일</label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='meritSDate' name='meritSDate'/> <!-- 날짜들어오는 부분 -->
							</div>
						</div>
						<div class='col-ms-4 col-xs-4'>
							<div class='input-group'>
								<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="meritEDate" data-link-format="yyyy-mm-dd">
									<label class='input-group-addon'><i class='glyphicon glyphicon-align-left' style='margin-right:10px;'></i>종료일</label>
									<input type='text' class='form-control' readonly/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type='hidden' id='meritEDate' name='meritEDate'/> <!-- 날짜들어오는 부분 -->
							</div>
						</div>
						<div class='col-ms-4 col-xs-4'>
							<button class='btn btn-primary form-control' id='btnMerit1'><i class='glyphicon glyphicon-search' style='margin-right:15px;'></i>검색</button>
						</div>
					</div>
					<div class='card-header'>
						<!-- 데이터를 기반으로 바뀌는 부분 -->
						<div class='form-group col-ms-12 col-xs-12'>
							<a class='card-link' data-toggle='collapse' data-parent='#accordion' href='#1'>
								<span>1</span>
								<span>영업부</span>
							</a>
							<span class='pull-right'>
								<button class='btn btn-default'><i class='glyphicon glyphicon-open' style='margin-right:15px;'></i>평가미완</button>
							</span>
						</div>
						<div class='collapse show' id='1'>
							<div class='card-body'>
								<div class='form-group col-ms-12 col-xs-12'>
									<div class='panel panel-default'>
										<div class='panel-body'>
											<div class='form-group col-ms-12 col-xs-12'>
												<div class='input-group'>
													<span class='input-group-addon'><i class='glyphicon glyphicon-grain' style='margin-right:15px;'></i>2017년 1분기 부서평가</span>
													<input type='text' class='form-control' name='sumPoint' value='44점'/>
												</div>
											</div>
											<div class='form-group col-ms-12 col-xs-12'>
												<span class='input-group-addon'><i class='glyphicon glyphicon-object-align-right' style='margin-right:15px;'></i>부서관련내용</span>
												<textarea rows='5'class='form-control'></textarea>
											</div>
										</div>
									</div>
									<div class='form-group col-ms-12 col-xs-12'>
										<div class='col-ms-3 col-xs-3'>
											<a href='/insaproject/index.jsp?inc=./Merit/merit_orgDeptModify.jsp'><button class='btn btn-warning'><i class='glyphicon glyphicon-exclamation-sign' style='margin-right:15px;'></i>평가지 수정</button></a>
										</div>
										<div class='col-ms-5 col-xs-5'>
											
										</div>
										<div class='col-ms-2 col-xs-2'>
											<button class='btn btn-success form-control' id='btnModify'><i class='glyphicon glyphicon-refresh' style='margin-right:15px;'></i>재평가</button>
										</div>
										<div class='col-ms-2 col-xs-2'>
											<button class='btn btn-success form-control' id='btnConfirm'><i class='glyphicon glyphicon-floppy-save' style='margin-right:15px;'></i>평가완료</button>
										</div>
									</div>
									<div class='form-group col-ms-12 col-xs-12'>
										<div class='col-ms-6 col-xs-12' style='background-color:#eeeeee;'>
											평가지 나옴<br/><br/><br/><br/><br/>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class='form-group col-ms-12 col-xs-12'>
							<a class='card-link' data-toggle='collapse' data-parent='#accordion' href='#2'>
								<span>2</span>
								<span>경영회계부</span>
							</a>
							<span class='pull-right'>
								<button class='btn btn-info'><i class='glyphicon glyphicon-saved' style='margin-right:15px;'></i>평가완료</button>
							</span>
						</div>
						<div class='collapse show' id='2'>
							<div class='card-body'>
								<div class='form-group col-ms-12 col-xs-12'>
									<div class='panel panel-default'>
										<div class='panel-body'>
											<div class='form-group col-ms-12 col-xs-12'>
												<div class='input-group'>
													<span class='input-group-addon'><i class='glyphicon glyphicon-grain' style='margin-right:15px;'></i>2017년 3분기 부서평가</span>
													<input type='text' class='form-control' name='sumPoint' value='44점'/>
												</div>
											</div>
											<div class='form-group col-ms-12 col-xs-12'>
												<span class='input-group-addon'><i class='glyphicon glyphicon-object-align-right' style='margin-right:15px;'></i>부서관련내용</span>
												<textarea rows='5'class='form-control'></textarea>
											</div>
										</div>
									</div>
									<div class='form-group col-ms-12 col-xs-12'>
										<div class='col-ms-3 col-xs-3'>
											<a href='/insaproject/index.jsp?inc=./Merit/merit_orgDeptModify.jsp'><button class='btn btn-warning'><i class='glyphicon glyphicon-exclamation-sign' style='margin-right:15px;'></i>평가지 수정</button></a>
										</div>
										<div class='col-ms-5 col-xs-5'>
											
										</div>
										<div class='col-ms-2 col-xs-2'>
											<button class='btn btn-success form-control' id='btnModify'><i class='glyphicon glyphicon-refresh' style='margin-right:15px;'></i>재평가</button>
										</div>
										<div class='col-ms-2 col-xs-2'>
											<button class='btn btn-success form-control' id='btnConfirm'><i class='glyphicon glyphicon-floppy-save' style='margin-right:15px;'></i>평가완료</button>
										</div>
									</div>
									<div class='form-group col-ms-12 col-xs-12'>
										<div class='col-ms-6 col-xs-12' style='background-color:#eeeeee;'>
											평가지 나옴<br/><br/><br/><br/><br/>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
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
$('#mertiOrgDept .form_date').datetimepicker({ // datePicker 설정
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