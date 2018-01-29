<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>myInfo</title>
</head>
<body>
	<div id='myInfo'>
		<div class='container'>
			<h2>내정보 보기</h2>
			<h3>비밀번호, 이메일만 수정</h3>
			<button class='btn btn-primary' id='btnModify'>수정</button>
		</div>
	</div>
</body>
<script>
document.getElementById("btnModify").onclick = function() {
	alert("수정되었습니다");
}
</script>
</html>