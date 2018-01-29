<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice_view</title>
</head>
<body>
	<div id='noticeView'>
		<div class='container'>
			<h2>공지사항 view페이지</h2>
			<button type='button' class='btn btn-primary' id='btnModify'>수정</button>
		</div>
	</div>
</body>
<script>
document.getElementById("btnModify").onclick = function() {
	location.href = "/insaproject/index.jsp?inc=./Board/notice_modify.jsp";
}
</script>
</html>