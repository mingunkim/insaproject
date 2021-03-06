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

<title>merit_org</title>
</head>
<body>
	<div id='meritOrg'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-list' style='margin-right:15px;'></i>사원평가</div>
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
					<div id='accordion'>
						<div class='card'>
							<div class='form-group col-ms-12 col-xs-12'>
								<div class='card-header'>
									<a class='card-link' data-toggle='collapse' data-parent='#accordion' href='#1'>
										<span>1</span>
										(<span>영업1팀</span>)
										<span>김민건</span>
										<span>대리</span>
									</a>
									<span class='pull-right'>
										<button class='btn btn-info'><i class='glyphicon glyphicon-saved' style='margin-right:15px;'></i>평가완료</button>
									</span>
								</div>
							</div>
							<div class='collapse show' id='1'>
								<div class='card-body'>
									<div class='form-group col-ms-12 col-xs-12'>
										<div class='col-ms-3 col-xs-3'>
											<img class='img-responsive' src='/insaproject/imgs/sky2.gif' style='min-height:180px; min-width:120px; padding:0;'/>
										</div>
										<div class='col-ms-9 col-xs-9'>
											<div class='panel panel-default'>
												<div class='panel-body'>
													<div class='form-group col-ms-6 col-xs-6'>
														<div class='input-group'>
															<span class='input-group-addon glyphicon glyphicon-saved'>사원명</span>
															<input type='text' class='form-control' name='employeeName'/>
														</div>
													</div>
													<div class='form-group col-ms-12 col-xs-12'>
														<div class='input-group'>
															<span class='input-group-addon glyphicon glyphicon-saved'>연수이력</span>
															<input type='text' class='form-control' name='edu'/>
														</div>
													</div>
													<div class='form-group col-ms-12 col-xs-12'>
														<div class='input-group'>
															<span class='input-group-addon glyphicon glyphicon-saved'>보유자격증</span>
															<input type='text' class='form-control' name='license'/>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class='form-group col-ms-12 col-xs-12'>
											<div class='col-ms-3 col-xs-3'>
												<a href='/insaproject/index.jsp?inc=./Merit/merit_orgModify.jsp'><button class='btn btn-warning'><i class='glyphicon glyphicon-exclamation-sign' style='margin-right:15px;'></i>평가지 수정</button></a>
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
												평가지 나옴
												<br/><br/><br/><br/><br/><br/><br/>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class='card-header'>
								<div class='form-group col-ms-12 col-xs-12'>
									<a class='card-link' data-toggle='collapse' data-parent='#accordion' href='#2'>
										<span>2</span>
										(<span>인사과1팀</span>)
										<span>박거배</span>
										<span>팀장</span>
									</a>
									<span class='pull-right'>
										<button class='btn btn-default' id='btnMerit2'><i class='glyphicon glyphicon-open' style='margin-right:15px;'></i>평가미완</button>
									</span>
								</div>
								<div class='collapse show' id='2'>
									<div class='card-body'>
										<div class='form-group col-ms-12 col-xs-12'>
											<div class='col-ms-3 col-xs-3'>
												<img class='img-responsive' src='/insaproject/imgs/sky2.gif' style='min-height:180px; min-width:120px; padding:0;'/>
											</div>
											<div class='col-ms-9 col-xs-9'>
												<div class='panel panel-default'>
													<div class='panel-body'>
														<div class='form-group col-ms-6 col-xs-6'>
															<div class='input-group'>
																<span class='input-group-addon glyphicon glyphicon-saved'>사원명</span>
																<input type='text' class='form-control' name='employeeName'/>
															</div>
														</div>
														<div class='form-group col-ms-12 col-xs-12'>
															<div class='input-group'>
																<span class='input-group-addon glyphicon glyphicon-saved'>연수이력</span>
																<input type='text' class='form-control' name='edu'/>
															</div>
														</div>
														<div class='form-group col-ms-12 col-xs-12'>
															<div class='input-group'>
																<span class='input-group-addon glyphicon glyphicon-saved'>보유자격증</span>
																<input type='text' class='form-control' name='license'/>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class='form-group col-ms-12 col-xs-12'>
												<div class='col-ms-3 col-xs-3'>
													<a href='/insaproject/index.jsp?inc=./Merit/merit_orgModify.jsp'><button class='btn btn-warning'><i class='glyphicon glyphicon-exclamation-sign' style='margin-right:15px;'></i>평가지 수정</button></a>
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
$('#meritOrg .form_date').datetimepicker({ // datePicker 설정
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