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
<link rel="stylesheet" href="./bootstrap/css/style.css" type="text/css" id="" media="print, projection, screen" />
<script src='./bootstrap/js/jquery-latest.js'></script>
<script src='./bootstrap/js/jquery.tablesorter.js'></script>
<script src='./bootstrap/js/jquery.tablesorter.min.js'></script>
<script>
$(document).ready(function(){
    /* $(".tablesorter").tablesorter(); */
    $("table").tablesorter({debug: true});    
 });
 
</script>
<title>Insert title here</title>
</head>
<body>
<div id='license_form'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:10px;'></span>QnA게시판</div>
				<div class='panel-body'>
									
					<!-- 폼 -->
					<form name='frm_QnA' method='post' id='frm_QnA'>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='button' class='btn btn-success' id='btnConfirm' >
								<span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>새글쓰기</button>
							
							</div>
						</div>
						<div class='pull-right'>
							<div class='btn-group'>
								<input class="btn-group" type='text' name='btnFind'/> 
								<button type='button' class='btn btn-primary' id='btnFind'>검색</button>								
							</div>
						</div>
					</form>
						<table id="rowspan" cellspacing="0" class="table tablesorter">
						<thead>
							<tr>
								<th>NO</th>
								<th>유형</th>
								<th>제목</th>
								<th>등록자</th>
								<th>조회수</th>
								
								
							</tr>
						</thead>
						
						<tbody>
							<tr>
								<td><a href='./index.jsp?inc=./Board/QnA_view.jsp'>B301</a></td>
								<td>외국어</td>
								<td>QnA내용1</td>
								<td>장인제</td>
								<td>32</td>
							</tr>
							<tr>
								<td><a href="#">B302</a></td>
								<td>기타</td>
								<td>QnA내용2</td>
								<td>전재호</td>
								<td>29</td>
							</tr>
							<tr>
								<td><a href="#">B303</a></td>
								<td>기타</td>
								<td>QnA내용3</td>
								<td>김민건</td>
								<td>26</td>
							</tr>
							<tr>
								<td><a href="#">B304</a></td>
								<td>기타</td>
								<td>QnA내용4</td>
								<td>박거배</td>
								<td>20</td>
							</tr>
							<tr>
								<td><a href="#">B305</a></td>
								<td>기타</td>
								<td>QnA내용5</td>
								<td>육동희</td>
								<td>10</td>
							</tr>
							<tr>
								<td><a href="#">B306</a></td>
								<td>기능문의</td>
								<td>QnA내용6</td>
								<td>신인환</td>
								<td>6</td>
							</tr>
						</tbody>
					</table>					
							
					<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
						<button class='btn btn-default' id='page1'>◁</button>
						<button class='btn btn-default' id='page1'>1</button>
						<button class='btn btn-default' id='page1'>2</button>
						<button class='btn btn-default' id='page1'>3</button>
						<button class='btn btn-default' id='page1'>▷</button>
					</div>	
				</div>
			</div>
		</div>
	</div>
<script>
   /*  var btnConfirm = document.getElementById("btnConfirm");
    btnConfirm.oncilck = function(){
    	location.href = './Board/QnA_insert.jsp';
    	
	}
 */
 	var frm = document.frm_QnA;
	
	   frm.btnConfirm.onclick = function(){
		   frm.action = '/insaproject/index.jsp?inc=./Board/QnA_insert.jsp';
		   frm.submit();
	   
	}
</script>
</body>
</html>