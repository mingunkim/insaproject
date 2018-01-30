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
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script> <!-- js중첩되면 drop메뉴 안먹음 -->
<!-- 부트스트랩 셀렉트사용 CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<!-- 부트스트랩 셀렉트사용 JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<!-- datePicker js -->
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.js"></script>
<script src="/insaproject/bootstrap/js/bootstrap-datetimepicker.ko.js"></script>
<title>employee_insert</title>
</head>
<body>
	<div id='employee_insert'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-search' style='margin-right:10px;'></i>인사카드 등록</div>
				<div class='panel-body'>
					<div class='form-group col-md-2 col-xs-2' style='padding:0; min-height:400px;'>
						<div class='col-ms-12 col-xs-12' style='padding:0;'>
							<img class='img-responsive' src='/insaproject/imgs/sky2.gif' style='min-height:200px; min-width:120px; padding:0;'/>
						</div>
						<div class='btn-group-vertical btn-lg' style='margin-top:35px; padding:0;'>
			                <label class="btn-group" style='margin-bottom:0;'>
			                    <span class="btn btn-primary">사진첨부
			                    	<input type="file" style="display: none;" name='attFile' id='attFile'>
			                    </span>
			                </label>
							<button type='button' class='btn btn-primary' id='btnInput'>파일가져오기</button>
							<button type='button' class='btn btn-primary' id='btnOutut'>파일내보내기</button>
						</div>
					</div>
					
					<!-- 폼 -->
					<form name='frm_employee' method='post'>
						<div class='form-group col-md-10 col-xs-10'>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-ms-4 col-xs-4'>
									<span style='font-size:3em;'>인사기본정보</span>
								</div>
								<div class='form-group col-ms-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-flag" style='margin-right:10px;'></i>권한</span>
										<select class="selectpicker show-tick" data-width="100px">
											<option disabled selected>설정</option>
											<option value=''>마스터</option>
											<option value=''>골드</option>
											<option value=''>실버</option>
											<option value=''>브론즈</option>
										</select>
									</div>
								</div>
								<div class='form-group col-ms-3 col-xs-3'>
									<button type='button' class='form-control btn btn-info' id=''>인사정보 등록</button>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon' style='font-size:9pt;'><i class="glyphicon glyphicon-user" style='margin-right:10px;'></i>사원명</span>
										<input type='text' class='form-control' name='employeeName'/>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-heart-empty" style='margin-right:10px;'></i>성별</span>
										<select class="selectpicker show-tick" data-width="100px">
											<option disabled selected>남/여</option>
											<option value=''>남</option>
											<option value=''>여</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-6 col-xs-6'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-credit-card" style='margin-right:10px;'></i>주민번호</span>
										<input type='text' class='form-control' name='jumin1'/>
										<span class='input-group-addon'><i class='glyphicon glyphicon-minus'></i></span>
										<input type='text' class='form-control' name='jumin2'/>
									</div>
								</div>
								
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="birthDate" data-link-format="yyyy-mm-dd">
											<label class='input-group-addon'><i class='glyphicon glyphicon-gift' style='margin-right:10px;'></i>생년월일</label>
											<input type='text' class='form-control' readonly/>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
										<input type='hidden' id='birthDate' name='birthDate'/> <!-- 날짜들어오는 부분 -->
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="hireDate" data-link-format="yyyy-mm-dd">
											<label class='input-group-addon'><i class='glyphicon glyphicon-briefcase' style='margin-right:10px;'></i>입사일</label>
											<input type='text' class='form-control' readonly/>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
										<input type='hidden' id='hireDate' name='hireDate'/> <!-- 날짜들어오는 부분 -->
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<div class='input-group date form_date' data-date="" data-date-format="dd MM yyyy" data-link-field="gradeDate" data-link-format="yyyy-mm-dd">
											<label class='input-group-addon'><i class='glyphicon glyphicon-briefcase' style='margin-right:10px;'></i>승급일</label>
											<input type='text' class='form-control' readonly/>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
										<input type='hidden' id='gradeDate' name='gradeDate'/> <!-- 날짜들어오는 부분 -->
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-briefcase" style='margin-right:10px;'></i>부서</span>
										<select class="selectpicker show-tick" data-width="100px" name='department'>
											<!-- 데이터를 기반으로 동적으로 생기는 부분 -->
											<option disabled selected>부서</option>
											<option value=''>영업1팀</option>
											<option value=''>비서실</option>
											<option value=''>기획조정실</option>
											<option value=''>경영1팀</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-flag" style='margin-right:10px;'></i>직위</span>
										<select class="selectpicker show-tick" data-width="100px" name='position'>
											<!-- 데이터를 기반으로 동적으로 생기는 부분 -->
											<option disabled selected>직위</option>
											<option value=''>회장</option>
											<option value=''>사장</option>
											<option value=''>이사장</option>
											<option value=''>본부장</option>
											<option value=''>부장</option>
											<option value=''>차장</option>
											<option value=''>계장</option>
											<option value=''>팀장</option>
											<option value=''>대리</option>
											<option value=''>사원</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-education" style='margin-right:10px;'></i>학력</span>
										<select class="selectpicker show-tick" data-width="100px" name='education'>
											<!-- 데이터를 기반으로 동적으로 생기는 부분 -->
											<option disabled selected>학력</option>
											<option value=''>대학원</option>
											<option value=''>4년제대졸</option>
											<option value=''>초대졸</option>
											<option value=''>고졸</option>
											<option value=''>검정고시</option>									
										</select>
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-inbox" style='margin-right:10px;'></i>우편번호</span>
										<input type='text' class='form-control' name='postal'/>
										<span class='input-group-addon btnPostal'><i class="glyphicon glyphicon-search" ></i></span>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-home" style='margin-right:10px;'></i>주소</span>
										<input type='text' class='form-control' name='address1'/>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-asterisk" style='margin-right:10px;'></i>상세주소</span>
										<input type='text' class='form-control' name='address2'/>
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-phone-alt" style='margin-right:10px;'></i>연락처</span>
										<input type='text' class='form-control' name='contact'/>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-phone" style='margin-right:10px;'></i>휴대폰</span>
										<input type='text' class='form-control' name='phone'/>
									</div>
								</div>
								<div class='form-group col-md-4 col-xs-4'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-envelope" style='margin-right:10px;'></i>이메일</span>
										<input type='text' class='form-control' name='email'/>
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-music" style='margin-right:10px;'></i>취미</span>
										<input type='text' class='form-control' name='hobby'/>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-indent-left" style='margin-right:10px;'></i>특기</span>
										<input type='text' class='form-control' name='specialty'/>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-heart" style='margin-right:10px;'></i>혼인여부</span>
										<select class="selectpicker show-tick" data-width="100px" name='marriage'>
											<option disabled selected>여부</option>
											<option value=''>미혼</option>
											<option value=''>기혼</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-screenshot" style='margin-right:10px;'></i>병역사항</span>
										<select class="selectpicker show-tick" data-width="100px" name='army'>
											<option disabled selected>병역</option>
											<option value=''>미필자</option>
											<option value=''>군필자</option>
										</select>
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-object-align-top" style='margin-right:10px;'></i>신장</span>
										<input type='text' class='form-control' name='tall'/>
										<span class='input-group-addon'>cm</span>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-scale" style='margin-right:10px;'></i>체중</span>
										<input type='text' class='form-control' name='weight'/>
										<span class='input-group-addon'>kg</span>
									</div>
								</div>
								<div class='form-group col-md-6 col-xs-6'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-eye-open" style='margin-right:10px;'></i>시력(좌)</span>
										<input type='text' class='form-control' name='leftSight'/>
										<span class='input-group-addon'><i class="glyphicon glyphicon-eye-open" style='margin-right:10px;'></i>시력(우)</span>
										<input type='text' class='form-control' name='rightSight'/>
									</div>
								</div>
							</div>
							<div class='col-md-12 col-xs-12'>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-eye-close" style='margin-right:10px;'></i>색맹</span>
										<select class="selectpicker show-tick" data-width="100px" name='blindness'>
											<option disabled selected>유무</option>
											<option value=''>유</option>
											<option value=''>무</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-plus" style='margin-right:10px;'></i>혈액형</span>
										<select class="selectpicker show-tick" data-width="100px" name='bloodType'>
											<option disabled selected>혈액형</option>
											<option value=''>A</option>
											<option value=''>B</option>
											<option value=''>O</option>
											<option value=''>AB</option>
										</select>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-list" style='margin-right:10px;'></i>종교</span>
										<input type='text' class='form-control' name='religion'/>
									</div>
								</div>
								<div class='form-group col-md-3 col-xs-3'>
									<div class='input-group'>
										<span class='input-group-addon'><i class="glyphicon glyphicon-gbp" style='margin-right:10px;'></i>내/외국인</span>
										<select class="selectpicker show-tick" data-width="100px" name='nationality'>
											<option disabled selected>내/외</option>
											<option value=''>내국인</option>
											<option value=''>외국인</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</form>
					<div class='form-group col-ms-12 col-xs-12'>
						<ul class='nav nav-tabs'>
							<li class='active'><a href='#license'>자격증 현황</a></li>
							<li><a href='#edu'>교육연수</a></li>
							<li><a href='#UDPoint'>상벌항목</a></li>
						</ul>
						<div class='tab-content'>
							<!-- 자격증 탭 -->
							<div class='tab-pane fade in active' id='license'>
								<!-- 자격증을 등록했다면 보여지는 리스트 -->
								<table class='table table-striped'>
									<thead>
										<tr>
											<th></th>
											<th>자격증 코드</th>
											<th>구분</th>
											<th>자격증명</th>
											<th>시행기관</th>
											<th>배점</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>B301</td>
											<td>외국어</td>
											<td>토익800점이상</td>
											<td>외국어부처</td>
											<td>10점</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>B302</td>
											<td>기타</td>
											<td>한국사</td>
											<td>역사사랑부처</td>
											<td>12점</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>B303</td>
											<td>전산</td>
											<td>전기산업기사</td>
											<td>전기공사</td>
											<td>15점</td>
										</tr>
									</tbody>
								</table>
								<div class='form-group col-ms-4 col-xs-4' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnLicense'>자격증 등록</button>
								</div>
								<div class='form-group col-ms-2 col-xs-2' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnLicenseDel'>삭제</button>
								</div>
							</div>
							<!-- 교육연수 탭 -->
							<div class='tab-pane fade' id='edu'>
								<!-- 교육연수가 등록되었다면 보여지는 리스트 -->
								<table class='table table-striped'>
									<thead>
										<tr>
											<th></th>
											<th>교육연수코드</th>
											<th>교육연수명</th>
											<th>시작일</th>
											<th>종료일</th>
											<th>교육기관명</th>
											<th>교육기관주소</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>C801</td>
											<td>리더의자세</td>
											<td>2017-01-22</td>
											<td>2017-02-02</td>
											<td>한국기술산업</td>
											<td>경기도 화성시</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>C802</td>
											<td>능동적인직무태도</td>
											<td>2017-03-14</td>
											<td>2017-03-24</td>
											<td>대한경영협회</td>
											<td>경기도 안양시</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>C803</td>
											<td>경제학과실무</td>
											<td>2017-08-10</td>
											<td>2017-08-20</td>
											<td>의왕경제연합</td>
											<td>경기도 의왕시</td>
										</tr>
									</tbody>
								</table>
								<div class='form-group col-ms-4 col-xs-4' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnEdu'>교육연수 등록</button>
								</div>
								<div class='form-group col-ms-2 col-xs-2' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnEduDel'>삭제</button>
								</div>
							</div>
							<div class='tab-pane fade' id='UDPoint'>
								<!-- 상벌이 등록되었다면 보여지는 리스트 -->
								<table class="table table-striped">
									<thead>
										<tr>
											<th></th>
											<th>분류</th>
											<th>상벌 코드</th>
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
											<td>A101</td>
											<td>쓰레기줍기</td>
											<td>100점</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>벌점</td>
											<td>A102</td>
											<td>지각</td>
											<td>50점</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>상점</td>
											<td>A103</td>
											<td>야근</td>
											<td>10점</td>
										</tr>
										<tr>
											<td>
												<input type='checkbox'/>
											</td>
											<td>벌점</td>
											<td>A104</td>
											<td>무단조퇴</td>
											<td>50점</td>
										</tr>
									</tbody>
								</table>
								<div class='form-group col-ms-4 col-xs-4' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnUDPoint'>상벌 등록</button>
								</div>
								<div class='form-group col-ms-2 col-xs-2' style='margin-top:15px;'>
									<button type='button' class='form-control btn btn-primary' id='btnUDPointDel'>삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
$('#employee_insert .form_date').datetimepicker({ // datePicker 설정
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

$("#employee_insert .btnPostal").click(function(){//우편번호 검색
	alert("우편번호");
});

$(document).ready(function(){ // tab관련
	$("#employee_insert .nav-tabs a").click(function(){
        $(this).tab('show');
    });
});

$("#employee_insert #btnLicense").click(function(){//자격증 등록
	window.open("/insaproject/Employee/employee_licenseWin.jsp","","width=400, height=400");
});

$("#employee_insert #btnEdu").click(function(){//교육연수 등록
	window.open("/insaproject/Employee/employee_eduWin.jsp","","width=400, height=400");
});

$("#employee_insert #btnUDPoint").click(function(){//상벌 등록
	window.open("/insaproject/Employee/employee_UDPointWin.jsp","","width=400, height=400");
});

$("#employee_insert #btnLicenseDel").click(function(){ // 자격증삭제
	confirm("정말삭제하시겠습니까?");
});

$("#employee_insert #btnEduDel").click(function(){ // 교육연수삭제
	confirm("정말삭제하시겠습니까?");
});

$("#employee_insert #btnUDPointDel").click(function(){ // 상벌삭제
	confirm("정말삭제하시겠습니까?");
});
</script>
</html>