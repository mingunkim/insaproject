<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<title>position_form</title>
</head>
<body>
	<div id='position_form'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>직급 리스트</div>
				<div class='panel-body'>
					<table class='table table-striped'>
						<thead>
							<tr>
								<th></th>
								<th>직급 코드</th>
								<th>직급명</th>
								<th>직급 순위</th>
							</tr>
						</thead>
						<tbody>
							<!-- 데이터를 기반으로 리스트를 보여지는곳 -->
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>
									<a href='#'>210</a>
								</td>
								<td>이사</td>
								<td>2위</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>
									<a href='#'>220</a>
								</td>
								<td>본부장</td>
								<td>3위</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>
									<a href='#'>230</a>
								</td>
								<td>차장</td>
								<td>4위</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>
									<a href='#'>240</a>
								</td>
								<td>계장</td>
								<td>5위</td>
							</tr>
							<tr>
								<td>
									<input type='checkbox'/>
								</td>
								<td>
									<a href='#'>250</a>
								</td>
								<td>팀장</td>
								<td>6위</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<form name='frm_position' method='post'>
				<div class='panel panel-default'>
					<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>직급 등록</div>
					<div class='panel-body'>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-user' style='margin-right:10px;'></i>직급</label>
								<input type='text' name='position' class='form-control'/>
							</div>
						</div>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-list-alt' style='margin-right:10px;'></i>순위</label>
								<input type='text' name='rank' class='form-control'/>
							</div>
						</div>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' id='btnConfirm' class='btn btn-success'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
								<button type='button' id='btnModify' class='btn btn-success'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
								<button type='button' class='btn btn-warning'id='btnDelete'><span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
document.getElementById("btnDelete").onclick = function() {//삭제버튼
	confirm("정말삭제하시겠습니까?");
}
</script>
</html>