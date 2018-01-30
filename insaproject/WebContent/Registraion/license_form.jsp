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
<title>license_form</title>
</head>
<body>
	<div id='license_form'>
		<div class='container'>
		
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>자격증 리스트</div>
				<div class='panel-body'>
					<!-- 폼 -->
					<form name='frm_license1' method='post'>
						<div class='pull-right'>
							<div class='input-group'>
								<select class="selectpicker show-tick" data-width="150px">
									<option disabled selected>분류</option>
									<option>한국어</option>
									<option>영어/외국어</option>
									<option>전산</option>
									<option>리더쉽</option>
									<option>기타</option>
								</select>
								<button type='button' class='form-control btn btn-primary' id='btnFind'>검색</button>
							</div>
						</div>
					</form>
					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>코드</th>
								<th>구분</th>
								<th>자격증명</th>
								<th>시행기관</th>
								<th>배점</th>
							</tr>
						</thead>
						<!-- 데이터를 기반으로 리스트를 보여주는 곳 -->
						
						<tbody id='result'></tbody>
					</table>
					<div id='page'></div>
				</div>
			</div>
			<div class='panel panel-default'>
				<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>항목등록</div>
				<div class='panel-body'>
				
					<!-- 폼 -->
					<form name='frm_license2' method='post' action=''>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group' >
								<label class='input-group-addon'><i class='glyphicon glyphicon-random' style='margin-right:10px;'></i>구분</label>
								<select class="selectpicker show-tick" data-width="150px" name='cate' value='${param.cate}'>
									<option disabled selected>분류</option>
									<option>한국어</option>
									<option>영어/외국어</option>
									<option>전산</option>
									<option>리더쉽</option>
									<option>기타</option>
								</select>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-asterisk' style='margin-right:10px;'></i>자격증명</label>
								<input type='text' class='form-control' name='card' value='${param.card}'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-briefcase' style='margin-right:10px;'></i>시행기관</label>
								<input type='text' class='form-control' name='post' value='${param.post}'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-plus' style='margin-right:10px;'></i>배점</label>
								<input type='text' class='form-control' name='point' value='${param.point}'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-plus' style='margin-right:10px;'></i>적용내용</label>
								<input type='text' class='form-control' name='content' value='${param.content}'/>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' class='btn btn-success' id='btnConfirm'>
									<span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
								<button type='button' class='btn btn-success'id='btnModify'>
									<span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
								<button type='button' class='btn btn-warning'id='btnDelete'>
									<span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
  var frm = document.frm_license2;
	frm.btnConfirm.onclick = function(){
		frm.action = 'insertR.pgb';
		frm.submit();
	}
</script>
</html>