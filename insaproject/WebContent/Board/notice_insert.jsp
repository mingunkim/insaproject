<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> <!-- 중복되면 드랍 안열림 -->
<!-- 섬머노트 -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<title>notice_insert</title>
</head>
<body>
	<div id='noticeInsert'>
		<div class='container'>
			<div class='panel panel-primary'>
				<div class='panel-heading'><i class='glyphicon glyphicon-pencil' style='margin-right:10px;'></i>공지사항 작성</div>
				<div class='panel-body'>
					<form name='frm_noticeInsert' id='articleForm' method='post'>
						<div class='form-group'>
							<div class='input-group'>
								<span class='input-group-addon'><i class='glyphicon glyphicon-leaf' style='margin-right:10px;'></i>제목</span>
								<input type='text' class='form-control' name='subject'/>
							</div>
						</div>
						<div class='form-group'>
							<textarea class='form-control' name="content" id="summernote"></textarea>
						</div>
						<div class='pull-right'>
							<button type='button' class='btn btn-primary' id='btnConfirm'>등록</button>
							<button type='button' class='btn btn-primary' id='btnList'>목록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>

/* onImageUpload: function(files, editor, welEditable) {
	console.log(files);
	console.log(files[0]);
	data = new FormDate();
	data.append("file", files[0]);
	var $note = $(this);
	$.ajax({
		data : data,
		type : "POST",
		url : "./noticeImage",
		cache : false,
		contentType : false,
		processDate : false,
		success : function(url) {
			alert(url);
			$note.summernote("insertImage", url);
		}
	});
} */

$(document).ready(function() {
    $('#summernote').summernote({
            height: 300,                 
            minHeight: null,             
            maxHeight: null,             
            focus: true,                  // set focus to editable area after initializing summernote
            /* callbacks: { */
              /* onImageUpload: function(files, editor, welEditable) {
                for (var i = files.length - 1; i >= 0; i--) {
                  sendFile(files[i], this);
                }
              } */
              onImageUpload: function(files, editor, welEditable) {
            		console.log(files);
            		console.log(files[0]);
            		data = new FormData();
            		data.append("file", files[0]);
            		var $note = $(this);
            		$.ajax({
            			data : data,
            			type : "POST",
            			url : "upload.nc",
            			encytype : "multipart/form-data",
            			cache : false,
            			contentType : false,
            			processData : false,
            			success : function(url) {
            				alert(url);
            				$note.summernote("insertImage", url);
            			}
            		});
            	}
            /* } */
    });
});

function sendFile(file, el) {
	var form_data = new FormDate();
	form_data.append("file", file);
	$.ajax({
		data : form_data,
		type : "POST",
		url : "./noticeImage",
		cache : false,
		contentType : false,
		encytype : "multipart/form-data",
		processData : false,
		success : function(url) {
			$(el).summernote("editor.insertImage", url); //파일 업로드시 이미지는 DB에 올라가고 리턴된 url을 사용하여 이미지 삽입
			$("#imageBoard > ul").append("<li><img src='"+url+"' width='480' height='auto'/></li>");
		}
	});
}

document.getElementById("btnConfirm").onclick = function() {
	var frm = document.frm_noticeInsert;
	frm.action = "insert.nc";
	frm.submit();
}

document.getElementById("btnList").onclick = function() {
	/* location.href = "/insaproject/index.jsp?inc=./Board/notice_list.jsp"; */
	var frm = document.frm_noticeInsert;
	frm.action = "upload.nc";
	frm.submit();
}
</script>
</html>