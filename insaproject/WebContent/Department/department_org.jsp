<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>department_org</title>
</head>
<body>
	<div id='department_org'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'></div>
				<div class='panel-body'>
					<h2>부서편성페이지</h2>
					<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
						<button class='btn btn-default' id='page1'>◁</button>
						<button class='btn btn-default' id='page1'>1</button>
						<button class='btn btn-default' id='page1'>2</button>
						<button class='btn btn-default' id='page1'>3</button>
						<button class='btn btn-default' id='page1'>▷</button>
					</div>
					<div class='row'>
						<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
							<button type='button' class='btn btn-success' id='btnInsert'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
							<button type='button' class='btn btn-success'id='btnModify'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
							<button type='button' class='btn btn-warning'id='btnDelete'><span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
document.getElementById('btnInsert').onclick = function() { // 등록버튼
	location.href= '/insaproject/index.jsp?inc=./Department/department_orgInsert.jsp';
}

document.getElementById("btnModify").onclick = function() { // 수정버튼
	alert("수정되었습니다.");
}

document.getElementById("btnDelete").onclick = function() { // 삭제버튼
	confirm("정말삭제하시겠습니까?");
}
</script>
</html>