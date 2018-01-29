<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>department_orgInsert</title>
</head>
<body>
	<div id='departmentOrgInsert'>
		<div class='container'>
			<h2>부서편성 등록 페이지</h2>
			<button type='button' class='btn btn-primary' id='btnInsert'>등록</button>
			<button type='button' class='btn btn-primary' id='btnList'>목록</button>
		</div>
	</div>
</body>
<script>
document.getElementById("btnInsert").onclick = function() { // 등록버튼
	alert("등록되었습니다.");
}

document.getElementById("btnList").onclick = function() { // 목록버튼
	location.href= '/insaproject/index.jsp?inc=./Department/department_org.jsp';
}
</script>
</html>