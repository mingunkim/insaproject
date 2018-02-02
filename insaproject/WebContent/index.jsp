<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>

<title>index</title>
<style>
body{margin: 0;padding: 0;font-family: "arial";background: #f1f1f2 !important;width: vh100;height:vh100;position:relative;}
#leftMenu h1{color:#fff;margin:30px auto;display:table;text-align:center;}
#leftMenu i.fa {font-size: 25px;padding: 9px;width: 30px;text-align: center;}
.leftMenu{height: 100%;background-color: #00838f;position: fixed;left: 0;top:0;width: 50px;transition: all ease 1s;overflow: hidden;transition: .5s cubic-bezier(.8, .5, .2, 1.4);box-shadow: 1px 4px 8px 4px rgba(0,0,0,0.3);}
#leftMenu .hamburger{width: 40px;height: 40px;border-radius: 50%;background-color: #ffc107;float: right;margin-right: 5px;margin-top: 5px;text-align: center;cursor: pointer;box-shadow: 0px 3px 4px rgba(0,0,0,.5);position: relative;transform: rotate(0deg);}
#leftMenu .hamburger.open{background-color: tomato;transition: all ease .5s;}
#leftMenu .hamburger:hover {box-shadow: none;transition: all ease .5s;transform: rotate(360deg);}
#leftMenu .hamburger span{width: 60%;height: 3px;background-color: #000;display: block;border-radius: 1px;float: left;margin-left: 20%;transition: all ease .3s;}
#leftMenu .hamburger span:nth-child(1){margin-top: 13px;}
#leftMenu .hamburger span:nth-child(2){margin-top: 3px;}
#leftMenu .hamburger span:nth-child(3){margin-top: 3px;}
#leftMenu .open span:nth-child(1){background-color: #fff;transform: rotate(45deg);transition-timing-function 	: ease-in-out;position: absolute;top: 5px;right: 8px;width: 25px;transition: all ease .5s;border-radius: 10px;}
#leftMenu .open span:nth-child(2){background-color: #fff;transition-timing-function: ease-in-out;margin-top: 18px;opacity: 0;transition: all ease .5s;}
#leftMenu .open span:nth-child(3){background-color: #fff;transform: rotate(-45deg);transition-timing-function: ease-in-out;margin-top: 0px;position: absolute;top: 18px;right: 8px;width: 25px;transition: all ease .5s;border-radius: 10px;}
.openMenu{width: 250px;transition: all ease 1s;overflow: hidden;transition: .5s cubic-bezier(.8, .5, .2, 1.4);}
#leftMenu .leftMenuList{margin-top: 70px;list-style: none;padding: 0;}
#leftMenu .leftMenuList li{width: 250px;line-height: 40px;color: #fff;border-bottom: 1px solid #00bcd6;font-size: 13px;}
#leftMenu .leftMenuList li:hover{background-color: #00bcd6;transition: all ease .5s;cursor: pointer;}
#leftMenu .leftMenuList li a{text-decoration: none;color: #fff;}
#leftMenu .leftMenuList li a svg{width: 40px;height: 40px;float: left;margin-left: 0px;}
#leftMenu .leftMenuList li a span{text-decoration: none;color: #fff;margin-left: 15px;width: 100%;}
#leftMenu .leftMenuList li ul li{padding: 0px;line-height: 30px;transition: all .4s;box-sizing: border-box;}
#leftMenu .leftMenuList li ul li:hover{background: #4DD0E1;transition: all .4s;}
#leftMenu .leftMenuList li ul li ul li{padding: 5px;background: #B2EBF2;}
#leftMenu .leftMenuList li ul li ul li a span{color:#00838f;}
#leftMenu .leftMenuList li ul li ul li:hover{background: #B2EBF2;}
.dropdown {color: #fff;text-decoration: none;margin-bottom: 5px;display: block;position: relative;transition:0.5s;}
.active + .dropdownlist {width: 100%;height: auto;line-height: 30px;padding: 0px;margin-left: 0px;background: #4DD0E1;transition:0.5s;}
.active + .dropdownlist:hover{background:#00bcd6;}
.dropdownlist {width: 0;height: 0;overflow: hidden;transition:0.5s;}
.dropdown:before {font-family: FontAwesome;content: "\f105";transition: all .4s;padding-right: 5px;right: 20px;position: absolute;top: 4px;}
.dropdown.active:before {font-family: FontAwesome;content: '\f107';transition: all .4s;padding-right: 5px;}
.leftMenu:not(.openMenu) li > .dropdownlist{pointer-events: none;height:0;}
.text-shadow{text-shadow: 1px 1px 0px #000;}
.text-color{color: #00BCD4;}
.close{opacity: .6 !important;}
#content {
	margin-top : 50px;
}
</style>
<script>
$(document).ready(function(){
	document.querySelector(".hamburger").onclick = function () {
		var element = document.querySelector(".leftMenu");
		  element.classList.toggle("openMenu");
  
		var hamburger = document.querySelector(".hamburger");
		  hamburger.classList.toggle("open");
  
		var closeAccordion = document.getElementsByClassName('dropdown');
		  var i = 0;
		  for (i = 0; i < closeAccordion.length; i++) {
			    closeAccordion[i].classList.remove('active');
			 }
		}

	var dropdown = document.getElementsByClassName('dropdown');
	  var i = 0;
	    for (i = 0; i < dropdown.length; i++) {
		    dropdown[i].onclick = function () {
			    this.classList.toggle('active');
		    }
		  }
		});
</script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String url = "/semiproject/index.jsp?inc=";
	
	String inc = "./main.jsp";
	if(request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}
%>
<div class="leftMenu" id='leftMenu'>
		<div class="hamburger close">
			<span></span>
			<span></span>
			<span></span>
		</div>
		<ul class="leftMenuList">
			<li>
				<a href="#" class="dropdown">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<span>사원관리</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Employee/employee_insert.jsp">
							<span>사원 등록</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Employee/employee_list.jsp">
							<span>사원 조회</span>
						</a>
					</li>
				</ul>
			</li>
			<!-- <li>
				<a href="#" class="dropdown">
					<i class="fa fa-table" aria-hidden="true"></i>
					<span>부서관리</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Department/department_form.jsp">
							<span>부서 등록</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Department/department_org.jsp">
							<span>부서 편성</span>
						</a>
					</li>
				</ul>
			</li> -->
			<li>
				<a href="#" class='dropdown'>
					<i class="fa fa-table" aria-hidden="true"></i>
					<span>기본등록</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Registraion/department_form.jsp">
							<span>부서 등록</span>
						</a>
					</li>
					<li>
						<a href="list.pgb">
							<span>직급 등록</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Registraion/license_form.jsp">
							<span>자격증 등록</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Registraion/edu_form.jsp">
							<span>교육연수 등록</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Registraion/UDPoint_form.jsp">
							<span>상벌 등록</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#" class="dropdown">
					<i class="fa fa-user-md" aria-hidden="true"></i>
					<span>인사고과</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Merit/merit_orgDept.jsp">
							<span>조직도</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Merit/merit_org.jsp">
							<span>부서도</span>
						</a>
					</li>
					<li>
						<a href="#" class="dropdown">
							<span>평가</span>
						</a>
							<ul class="dropdownlist">
								<li>
									<a href="/insaproject/index.jsp?inc=./Merit/deptMerit_regi.jsp">
										<span>부서평가 등록</span>
									</a>
								</li>
								<li>
									<a href="/insaproject/index.jsp?inc=./Merit/empMerit_regi.jsp">
										<span>사원평가 등록</span>
									</a>
								</li>
							</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#" class="dropdown">
					<i class="fa fa-heartbeat" aria-hidden="true"></i>
					<span>게시판</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Board/notice_list.jsp">
							<span>공지사항</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Board/QnA_list.jsp">
							<span>Q&A</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#" class="dropdown">
					<i class="fa fa-cog" aria-hidden="true"></i>
					<span>개인정보/설정</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="/insaproject/index.jsp?inc=./Setting/myInfo.jsp">
							<span>내 정보설정</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/i
						ndex.jsp?inc=./Setting/myMerit.jsp">
							<span>내 평가서 보기</span>
						</a>
					</li>
					<li>
						<a href="/insaproject/index.jsp?inc=./Setting/myDepartment.jsp">
							<span>내 부서평가 보기</span>
						</a>
					</li>
				</ul>
			</li>
			<!-- <li>
				<a href="#" class="dropdown">
					<i class="fa fa-stethoscope" aria-hidden="true"></i>
					<span>TRANSCRIPTION</span>
				</a>
				<ul class="dropdownlist">
					<li>
						<a href="#">
							<span>TRANSCRIPTIONSETUP</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span>DOCUMENTREQUISITION</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span>DEFICIENCYTRACKING</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span>MANAGEDOCUMENTPANEL</span>
						</a>
					</li>
				</ul>
			</li> -->
		</ul>
	</div>
	<div id='content'>
		<jsp:include page='<%=inc %>'></jsp:include>
	</div>
</body>
</html>