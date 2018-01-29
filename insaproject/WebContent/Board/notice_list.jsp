<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice_list</title>
</head>
<body>
	<div id='notice_list'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'>공지사항</div>
				<div class='panel-body'>
					<div class='pull-right'>
						<button type='button' class='btn btn-primary' id='btnInsert'>입력</button>
						<button type='button' class='btn btn-primary' id='btnDelete'>삭제</button>
					</div>
					<div class='form-group col-ms-12 col-xs-12'>
						<table class='table table-striped'>
							<thead>
								<tr>
									<th></th>
									<th>번호</th>
									<th>제목</th>
									<th>글쓴이</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<input type='checkbox'/>
									</td>
									<td>1</td>
									<td>
										<a href='/insaproject/index.jsp?inc=./Board/notice_view.jsp'>18.01.18 정기점검 18시~22시 입니다.</a>
									</td>
									<td>Master.shin</td>
								</tr>
								<tr>
									<td>
										<input type='checkbox'/>
									</td>
									<td>2</td>
									<td>
										<a href='/insaproject/index.jsp?inc=./Board/notice_view.jsp'>18.01.22 정기점검 14시~18시 입니다.</a>
									</td>
									<td>Master.Gun</td>
								</tr>
							</tbody>
						</table>
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
</body>
<script>
document.getElementById("btnInsert").onclick = function() {
	location.href = "/insaproject/index.jsp?inc=./Board/notice_insert.jsp";
}

document.getElementById("btnDelete").onclick = function() {
	confirm("정말삭제하시겠습니까?");
}
</script>
</html>