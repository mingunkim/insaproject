<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 게시판글쓰깅~</h3>
	<div id='QnA_insert'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>게시판글쓰기</div>
				<div class='panel-body'>
					<div class='form-group col-md-5 col-xs-5'>
						
						<form name='frm_eduList' method='post'>
							
							<div class='form-group'>
								<div class='input-group'>
									<label class='input-group-addon'><i class='glyphicon glyphicon-book' style='margin-right:10px;'></i>작성자</label>
									<input type='text' name='curriculumName' class='form-control'/>
								</div>
							</div>
													
							<div class='form-group'>
								<div class='input-group'>
									<label class='input-group-addon'><i class='glyphicon glyphicon-object-align-right' style='margin-right:10px;'></i>제목</label>
									<input type='text' name='institutionName' class='form-control'/>
								</div>
							</div>
							기능
							<div class='input-group'>
								<select class="selectpicker show-tick" data-width="150px">
									<option disabled selected>분류</option>
									<option>기능</option>
									<option>질문</option>
									<option>자격증</option>
									<option>인사평가</option>
									<option>기타</option>
								</select>
							</div>
							
							<div class='form-group'>
							  <label for='content'>내용</label>
							  <textarea class='form-control' rows='5' name='content'></textarea>
							</div>	
						</form>
					</div>
				
					<div class='row'>
						<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
							<button type='button' id='btnInsert' class='btn btn-success'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>글쓰기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>