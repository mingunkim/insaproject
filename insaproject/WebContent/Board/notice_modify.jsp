<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice_modify</title>
</head>
<body>
	<div id='noticeModify'>
		<div class='container'>
			<h2>공지사항 수정 페이지</h2>
			<button type='button' class='btn btn-primary' id='btnConfirm'>수정확인</button>
			<button type='button' class='btn btn-primary' id='btnList'>목록</button>
		</div>
	</div>
</body>
<script>
document.getElementById("btnConfirm").onclick = function() {
	alert("수정되었습니다.");
}

document.getElementById("btnList").onclick = function() {
	location.href = "/insaproject/index.jsp?inc=./Board/notice_list.jsp";
}
</script>
</html>