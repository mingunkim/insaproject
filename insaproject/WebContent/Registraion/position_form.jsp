<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
				<div class='panel-heading'><span class="glyphicon glyphicon-list" style='margin-right:15px;'></span>직급 리스트</div>
				<div class='panel-body'>
					<table class='table table-striped'>
						<thead>
							<tr>
								<th></th>
								<th>직급 코드</th>
								<th>직급명</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<!-- 데이터를 기반으로 리스트를 보여지는곳 -->
							<c:set var='cnt' value='1'/>
							<c:forEach var="vo" items="${list }">
							<form name='frm_list${cnt }' method="post">							
							<tr>
								<td>
									<input type='checkbox' class="chk" name="chk" value='${vo.pos_name}' onchange="chkFunc(this,'${vo.pos_code }')"/>
								</td>
								<td>
									<a href='#'>${vo.pos_code }</a>
								</td>
								<td>${vo.pos_name }
								</td>
								<td>
									<button type='button' class='btn btn-warning'id='btnDelete' onclick='btn_del(${cnt})'><span class='glyphicon glyphicon-ban-circle' style='margin-right:10px;'></span>삭제</button>									
									<input type='hidden' name='pos_code'  value="${vo.pos_code }">
									<input type='hidden' name='pos_name'  value="${vo.pos_name}">
								</td>
							</tr>
							<c:set var='cnt' value='${cnt+1 }'/>
							</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<form name='frm_position' id='frm_position' method='post' action="insert.pgb">
				<div class='panel panel-default'>
					<div class='panel-heading'><span class='glyphicon glyphicon-log-in' style='margin-right:10px;'></span>직급 등록</div>
					<div class='panel-body'>
						<div class='form-group col-md-6 col-xs-6'>
							<div class='input-group'>
								<label class='input-group-addon'><i class='glyphicon glyphicon-user' style='margin-right:10px;'></i>직급</label>
								<input type="hidden" name='pos_code' class='form-control' required='required' />
								<input type='text' name='pos_name' class='form-control' required='required'/>
							</div>
						</div>
						<div>
							${msg }
						</div>
						<div class='row'>
							<div class='col-md-3 col-md-offset-5 col-xs-6 col-xs-offset-5'>
								<button type='submit' id='btnConfirm' class='btn btn-success'><span class='glyphicon glyphicon-upload' style='margin-right:10px;'></span>등록</button>
								<button type='button' id='btnModify' class='btn btn-success' onclick='modifyFunc()'><span class='glyphicon glyphicon-refresh' style='margin-right:10px;'></span>수정</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
function btn_del(cnt){
	var frm_list = document.forms[cnt-1];
	var chk = frm_list.chk;
	if(confirm("정말 삭제하시겠습니까?")==true){
		
		frm_list.action = 'delete.pgb';
		frm_list.submit();	
	}
}
function chkFunc(obj, pc){
	var pos_code = document.frm_position.pos_code;
	var pos_name = document.frm_position.pos_name;
	var chk = document.getElementsByName("chk");
	pos_name.value = obj.value;
	pos_code.value = pc;
	for(var i=0; i<chk.length; i++){
		if(chk[i]!=obj){
			chk[i].checked = false;
		}
		if(obj.checked==false){
			pos_name.value = "";
		}
	}
}

function modifyFunc(){
	var frm = document.frm_position;
	
	frm.action = 'modify.pgb';
	frm.submit();
}
</script>
</html>