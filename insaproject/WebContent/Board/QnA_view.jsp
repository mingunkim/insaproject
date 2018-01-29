<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> View 페이지 입니다.</h3>
	
	<div id='QnA_View'>
		<div class='container'>
			<h2>공지사항 view페이지</h2>
			<button type='button' class='btn btn-primary' id='btnModify'>수정</button>
			<button type='button' class='btn btn-primary' id='btnDelete'>삭제</button>
		</div>
	</div>
	
<script>
	var btnModify = document.getElementById("btnModify");
	var btnDelete = document.getElementById("btnDelete");
	btnModify.onclick=function(){
		alert("수정되었습니다.");
	}
	btnDelete.onclick=function(){
		alert("삭제되었습니다.");
		history.back();
	}
			
		

</script>
</body>
</html>