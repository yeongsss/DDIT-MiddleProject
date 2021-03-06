<%@page import="ddit.vo.SanctionDocumentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Na's Company</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../summernote/summernote-lite.js"></script>
<script src="../summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="../summernote/summernote-lite.css">
<link href="../css/mainPage.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<style>
.comment:focus {
	outline : none;
}

</style>
</head>

<%
HttpSession getsession = request.getSession();
String mem_id = (String) getsession.getAttribute("id");
SanctionDocumentVO document = (SanctionDocumentVO)request.getAttribute("document");

%>

<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="../images/lee.JPG" alt="" />
			<h1><a href="#">Na's Company</a></h1>
			<span>I can do it! <a href="http://templated.co" rel="nofollow">You Can do it!</a></span>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Main Page</a></li>
				<li><a href="#" accesskey="2" title="">임직원 소개</a></li>
				<li><a href="#" accesskey="3" title="">채팅</a></li>
				<li><a href="#" accesskey="4" title="">Calendar</a></li>
				<li><a id="sanctionBtn" href="#" accesskey="5" title="">전자결재</a></li>
				<li id="conference"><a>회의실</a></li>
				<li><a id="freeBtn" href="#" accesskey="5" title="">자유게시판</a></li>
				<li id="manager"><a>관리자 페이지</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<div id="banner">
				<img src="../images/main2.JPG" alt="" class="image-full" />
			</div>
			<div id="welcome">
				<div class="title">
					<h2>Na's Company</h2>
					<span class="byline">IT Leading Company</span>
				</div>
				<p> <strong>디지털 정보화 시대에 한발 앞선</strong> 기업의 미래를 열어가는 IT개발 및 유지보수 솔루션 전문기업<a href="http://templated.co" rel="nofollow"></a> Na's Company입니다.  <a href="http://fotogrph.com/"></a> <a href="http://templated.co/license"></a> 안녕하십니까? Na's Company 방문을 환영합니다. Na's Company는 직원의 무한한 발전이라는  목표아래 시스템통합(SI), IT아웃소싱 및 최상의 IT솔루션을 제공하는 u-Business 전문 기업입니다. Na's Company 임직원은 성실한 회사, 신뢰받는 기업이 되고자 끊임없는 기술 개발과 개척정신으로 품질의 고급화를 추구하고 있습니다. 풍부한 사업경험을 바탕으로 최적화된 IT 인프라 서비스를 고객 여러분께 제공할 것이며, 차별화되고 특화된 경쟁력을 기반으로 역량있는 글로벌 기업으로 도약하겠습니다. 직원 여러분의 지속적인 관심과 성원을 부탁드립니다. </p>
				<ul class="actions">
					<li><a href="#" class="button">Etiam posuere</a></li>
				</ul>
			</div>
		</div>
		<div id="featured">
			<div class="title">
				<h2>공지사항</h2>
				<span class="byline"> </span>
			</div>
			<div class="content">
				<ul class="style1">
					<li class="first">
						<p class="date"><a href="#">sept<b>05</b></a></p>
						<h3>11/24 창립기념일 관련 행사 안내</h3>
						<p><a href="#">11/24일 창립기념일 기념품 배포 안내드립니다.</a></p>
					</li>
					<li>
						<p class="date"><a href="#">sept<b>17</b></a></p>
						<h3>부서별 워크숍 일정 안내</h3>
						<p><a href="#">관리부-9/27, </a></p>
					</li>
					<li>
						<p class="date"><a href="#">Jan<b>01</b></a></p>
						<h3>Amet sed volutpat mauris</h3>
						<p><a href="#">Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl. Nullam non wisi a sem semper eleifend. Etiam non felis. Donec ut ante.</a></p>
					</li>
					<li>
						<p class="date"><a href="#">Dec<b>31</b></a></p>
						<h3>Sagittis diam dolor amet</h3>
						<p><a href="#">Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem. Mauris quam enim, molestie. Donec leo, vivamus fermentum nibh in augue praesent congue rutrum.</a></p>
					</li>
				</ul>
			</div>
		</div>
		<div id="copyright">
			<p> Na's Company 대표: 이나영 | CS center : 1588-2775</p>
			<span>&copy; 대전광역시 중구 중앙로 76 영민빌딩 4층 | Fax : 042-5555-3221</span>
			<span>&copy;DESIGN BY <a href="http://templated.co" rel="nofollow">Yuri Seo</a>.</span>
		</div>
	</div>
</div>

<script type="text/javascript">


//----------------------------------------------------------------------------관리자
$('#manager').on('click',function(){
	
	let auth = '<%=(int)getsession.getAttribute("auth") %>';
	
	if (auth == 1) {
		manager();
	}else {
		alert('관리자가 아닙니다♡');		
	}
	
});



	
function manager(){
	let managerCode = "";
	
	managerCode += "<div class='memBtn'><input type='button' class='button1' id='memLookUp' name='memLookUp' value='직원관리'>";
	managerCode += "<input type='button' class='button1' id='manageNoticeBoard' name='manageNoticeBoard' value='공지사항관리'></div>";
// 	managerCode += "<div id='myDiv' class='col-lg-10' name='myDiv' > </div>";
	
	let code ="<div id='featured'>";
	code +="	<div class='title'></div>";
	code +="	<div class='content'></div>";
	code +="	</div>";
	
	$('#top').html(managerCode);	
	$('#featured').html(code);
	
	$('#memLookUp').on('click',memLookUp);
	$('#manageNoticeBoard').on('click',manageNoticeBoard);
}


function manageNoticeBoard(){
	$.ajax({
		url : '<%=request.getContextPath()%>/board/board.do',
		type : 'post',        
		data : {
		 "choice" : "공지"
		},
		 dataType : "json",
		 success : function(res){
			console.log(res);
				
			let str = "";
			str += "<ul class='style2'>";
			
			$.each(res, function(i,v){
				str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
				str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
				str +="<p class='writer'><a href='#'>"+v.board_no+"<b>"+v.board_writer+"</b></a></p>";
				str +="<h3></h3>";
				str +="<p><a href='#'>"+ v.board_title+"</a></p>";
				str += "</li>";
			});
				str += "</ul>";
				str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
				
				$('.content').html(str);
				$('.boardInsertBtn').on('click', manageBoardInsert);
				
		  },
		    
		    error :function(xhr){
				console.log(xhr);
				console.log(xhr.status);
		    }
	});
}

// 공지사항 추가
function manageBoardInsert(){
	let str = "";
// 		str +="	<select name='board_nm' id='board_nm'>";
// 		str +="		<option value='자유'>자유</option>";
// 		str +="		<option value='공지'>공지</option>";
// 		str +="	</select> &nbsp; &nbsp; ";
		str += "<p class='notice-title'>제목 : &nbsp; &nbsp;&nbsp; &nbsp;";
		str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' autocomplete=off maxlength='20'></p>";
		str += "<textarea class='summernote' id='board_content' name='editordata'></textarea>";

		str += "<div class='manage-board'><input type='button' class='manage-board-btn' id='boardInsert' class='' value='추가'></input>";
		str += "<input type='button' class='manage-board-btn' id='manageBoardList' value='목록'></input></div>";
	
		$('.content').html(str); 
	
		$('.summernote').summernote({
			 height: 150,
			 lang: "ko-KR" 
		  });
		
		$('#manageBoardList').on('click',manageNoticeBoard);
		
		$('#boardInsert').on('click', function(){
		
			let board_title = $('#board_title').val();
			let board_content = $('#board_content').val();
		
			console.log(board_nm);

	
			$.ajax({
				url : '<%=request.getContextPath()%>/board/board.do',
			    type : 'post', 
			    data : {
			    	"choice" : "추가",
			    	"board_nm" : "공지",
			    	"board_title" : board_title,
			    	"board_content" : board_content
			    },
			    success : function(res){
			    	manageNoticeBoard(); 
				},
			    dataType : "json",
			    
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
	}


function memSalary(memNo){
	
	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "salaryList",
			"memNo" : memNo
		},
		
		success : function(res){
			let code = "";
			code += "<table class='salary-table'><thead><tr><td>구분</td><td>급여액</td><td>지급일</td></tr></thead>";
			code += `<tbody>`;
			$.each(res, function(i,v){
				code += "<tr><td>"+v.salary_nm+"</td>";
				code += "<td>"+v.salary+"</td>";
				code += "<td>"+v.payday+"</td></tr>";
				
			});
			code += "<tr><td><input type='button' value='급여지급' id='salary' onclick='salary("+memNo+");'></td></tr>";
			code += `</tbody></table>`;
			$('#data').html(code);
		},
		dataType : 'json',
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function salary(memNo){
	let code = "";
	code += "<div>";
	code += "<label><input type='radio' name='search_type' value='급여' checked />급여</label>";
	code += "<label><input type='radio' name='search_type' value='보너스' />보너스</label><br>";
	code += "지급금액 : <input type='text' id='salMoney'><input type='button' id='payments' name='payments' onclick='payment("+memNo+");' value='지급'>";
	code += "</div>";
	
	$('#data').html(code);
	
}

function payment(memNo) {
	let salType = $("input[name='search_type']:checked").val();
	let salMoney = $('#salMoney').val();

	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',	
		type : 'post',
		data : {
			"choice" : "payments",
			"memNo" : memNo,
			"salType" : salType,
			"salMoney" : salMoney
		},
		sucess : function(res){
			console.log(res);
//				memSalary(memNo);
			memLookUp();
			
		},
		dataType : 'json',
		error : function(xhr){

			
			
		}
	});
}


// 해당부서 직원리스트
function memLookUp(){					
	
			let lookCode ="";
			let code ="";
			code += "<h3>직원관리</h3>";
			$('.title').html(code);
//				lookCode +="<div>직원정보조회</div>";

	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "departList"
		},
	
		success : function(res){
			console.log(res)
			
			lookCode +="	<table>";
			lookCode +="		<tbody><tr>";
			lookCode +="			<td> <select id='sel1' class='sel1' name='sel1' onchange='departMember()'c style='width:100px;' onclick='departMember();'>";
			
			$.each(res, function(i,v){
				lookCode +="				<option value='"+ v.dept_no +"'>"+ v.dept_nm +"</option>";
			});
			
			lookCode +="</td></tr>";
			lookCode +="</tbody>";
			lookCode +="</table>";
			lookCode +="<div id='bigData' class='bigData' name='bigData'>";
			lookCode +="	<div id='data' class='data' name='data'></div>";
			lookCode +="	<div id='detail' class='detail' name='detail'></div></div>";
		 			
			$('.content').html(lookCode);
			
			
			$('#memLookUp').on('click',memLookUp);
			$('#memSalary').on('click',memSalary);
// 			$('#memWork').on('click',memWork);

		},
		dataType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function departMember(){
	
	let department = $("#sel1 option:selected").val();
	
	console.log(department);
	
	$.ajax({
		url :  '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "departMember",
			"department" : department
		},
		success : function(res){
			console.log(res);		

			let code = "";
			code += "<table id='dept-mem' width='100px' >";
			code += "<thead><tr><td></td><td></td></tr></thead><tbody>";
			$.each(res, function(i,v){
				
				code += "<tr class='meminfo' ><td>"+(i+1)+"</td><td class='memNo'><a href='javascript:void(0);' class='meminfo' onclick='deptMemDetail("+v.mem_no+")'>"+v.mem_nm+"</td></tr>";
			});
			
			code += "</tbody>";
			code += "</table>";
			
			$('#data').html(code);
			
		},
		dataType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}			
	});
}

function deptMemDetail(memNo){
	console.log(memNo);
//		console.log(memNm);
	
	let code = "<br>";
	 code +="<div class='memupdate'><input type='button' class='button2' id='updateBtn' onclick='mUpdate("+memNo+");' value='정보 수정'>";
	 code +="<input type='button' class='button2' id='infoUpdateBtn' onclick='DPupdate("+memNo+");' value='부서및직급 변경'>";
	 code +="<input type='button' class='button2' id='memSalary' name='memSalary' onclick='memSalary("+memNo+");' value='급여관리'>";
	 code += "<input type='button' class='button2' id='memberWork' name='memberWork' onclick='memWork("+memNo+");' value='근태관리'></div>";
	 code += "<table border='1' id='dept-mem-detail' cellpadding='10' cellspacing='10' width='100px'>";
	 code += "<thead><tr><td>직원번호</td><td>이름</td><td>전화번호</td>";
	 code += "<td>직급</td><td>부서</td><td>생년월일</td><td>주소</td><td>메일</td>";
	 code += "<td>변경 직급</td><td>변경 부서</td><td>변경일</td>";
	 code += "</tr></thead><tbody>";
	
	 $.ajax({
		url : '<%=request.getContextPath()%>/manage/manage.do',
		type : 'post',
		async:false,
		data : {
			"choice" : "deptDetail",
			"memNo" : memNo
		},
		success : function(res){
				let dd = res;
				console.log(dd);
			
			$.each(res, function(i,v){
				
				code += "<tr><td>"+v.mem_no+"</td>";
				code += "<td>"+v.mem_nm+"</td>";
				code += "<td>"+v.mem_tel+"</td>";
				code += "<td>"+v.posi_nm+"</td>";
				code += "<td>"+v.dept_nm+"</td>";
				code += "<td>"+v.mem_birth+"</td>";
				code += "<td>"+v.mem_addr1+" "+ v.mem_addr2+"</td>";
				code += "<td>"+v.mem_mail+"</td>";
				code += "<td>"+v.ch_posi_nm+"</td>";
				code += "<td>"+v.ch_dept_nm+"</td>";
				code += "<td>"+v.change_date+"</td></tr>";

			});
			
			code += "</tbody></table>";
			code +="<div id='update' name='update'></div>";
			$('#data').html(code);
			
			
		},
		dataType : 'json',
		error : function(xhr){
			console.log(xhr);
		}
	 });
	
}

function mUpdate(data){
	
	console.log(data);
	
	let code = "";
	code +=`<p>전화번호 :&nbsp; <input type='text' class='textbox'id='telUpdate' name='telUpdate' placeholder="변경할전화번호입력"></p>`;
	code +=`<p>기본주소 :&nbsp; <input type='text' class='textbox' id='addrUpdate1' name='addrUpdate1' placeholder="변경할 기본주소 입력"></p>`;
	code +=`<p>상세주소 :&nbsp; <input type='text' class='textbox' id='addrUpdate2' name='addrUpdate2' placeholder="변경할 상세주소 입력"></p>`;
	code +=`<p>이 메 일 :&nbsp; <input type='text' class='textbox' id='mailUpdate' name='mailUpdate' placeholder="변경할 이메일 입력"></p>`;
	code +=`<input type='button' class='sendBtn' id='send' name='send' value='수정'>`;
	
	$('#data').html(code);
	
	$('#send').on('click',function(){
	
		let tel = $('#telUpdate').val();
		let addr1 = $('#addrUpdate1').val();
		let addr2 = $('#addrUpdate2').val();
		let mail = $('#mailUpdate').val();
		
		$.ajax({
			url : '<%=request.getContextPath() %>/manage/manage.do',
			type : 'post',
			data : {
					"choice" : "update",
					"tel" : tel,
					"addr1" : addr1,
					"addr2" : addr2,
					"mail" : mail,
					"memNO" : data
				
			},
			success : function(res){
				
				if (res < 0 ) {
					alert('수정에 실패했습니다.');
				}
				
				deptMemDetail(data);
			
			},
			dataType : 'json',
			
			error : function(xhr){
				console.log(xhr);	
			}
		});
		
	});
}


function DPupdate(memNo){
	
	console.log(memNo);
	
	let code = "<hr><hr>";
	code += `<table><tr>`;
	code += `<td>변경 부서</td><td> <select id='deptChoice' name='deptChoice' onchange='update_cate1()' style='width:140px;' >`;
	code += `<option value='10'>인사부</option>`;
	code += `<option value='20'>개발부</option>`;
	code += `<option value='30'>영업부</option>`;
	code += `<option value='40'>디자인부</option>`;
	code += `<option value='50'>총무부</option>`;
	code += `<option value='60'>마케팅부</option>`;
	code += `<option value='99'>관리부</option></td></tr>`;
	
	code += `<tr><td>변경 직급</td><td> <select id='posiChoice' name='posiChoice' style='width:140px;'>`;
	code += `<option value='1'>사원</option>`;
	code += `<option value='2'>대리</option>`;
	code += `<option value='3'>과장</option>`;
	code += `<option value='4'>차장</option>`;
	code += `<option value='5'>부장</option>`;
	code += `<option value='6'>팀장</option>`;
	code += `<option value='7'>이사</option>`;
	code += `<option value='8'>전무</option>`;
	code += `<option value='9'>부사장</option>`;
	code += `<option value='10'>사장</option></td></tr>`;
	
	
	code += `<tr><td><input type='button' id='DPUpdate' value='변경'></td><td></td></tr> `;
	
	$('#data').html(code);
			
	$('#DPUpdate').on('click',function(){
		
		let deptSelect = $("#deptChoice option:selected").val();
		let posiSelect = $("#posiChoice option:selected").val();
		
		console.log(deptSelect);
		console.log(posiSelect);
		
		$.ajax({
			url : '<%=request.getContextPath() %>/manage/manage.do',
			type : 'post',
			data : {
				"choice" : "DPupdate",
				"deptSelect" : deptSelect,
				"posiSelect" : posiSelect,
				"memNO"	: memNo
			},
			success : function(res){
				console.log(res);

				if (res <= 0 ) {
					alert('수정에 실패했습니다.');
				}
				
				deptMemDetail(memNo);
			},
			dataType : 'json',
			error : function(xhr){
				console.log(xhr);
			}
		});
	});
	
	
}



//-------------------------------------------------------------------------------------회의실
function deleteRes(resNo){
	
	if(!confirm("해당 예약을 취소하시겠습니까?")){
		return false;
	}
	
	
	$.ajax({
		url : '<%=request.getContextPath()%>/conference/conferenceList.do',
		type : 'post',
		data : {
			"choice" : "delete",
			"resNo" : resNo
		},
		success : function(res){
			if (res > 0) {
				alert("삭제 성공");
			} else {
				alert("본인이 예약한 회의실이 아닙니다.!!!");
			}
			showList();
		}, 
		
		dateType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}
		
	});

}
			
function res(){
	$('#resBtn').on('click',function(){
		let bookcode = "";
		bookcode +="	<input type='datetime-local' id='startTime' name='startTime'><br>";
		bookcode +="	<input type='datetime-local' id='endTime' name='endTime'><br>";
		bookcode +="	<select name='conferenceRoom' id='conferenceRoom'>";
		bookcode +="		<option value='1'>회의실1</option>";
		bookcode +="		<option value='2'>회의실2</option>";
		bookcode +="		<option value='3'>회의실3</option>";
		bookcode +="		<option value='4'>회의실4</option>";
		bookcode +="		<option value='5'>회의실5</option>";
		bookcode +="		<option value='6'>회의실6</option>";
		bookcode +="		<option value='7'>회의실7</option>";
		bookcode +="	</select>";
		bookcode +="	<hr>";
		bookcode +="	<input type='button' id='btn' value='예약' >";
		$('#top').html(bookcode);	
		
		
		$('#btn').on('click', function(){
			
			let startTime = $('#startTime').val();
			let endTime = $('#endTime').val();
			let conference = $("#conferenceRoom option:selected").val();
			console.log(startTime);
			console.log(endTime);
			console.log(conference);
			
			$.ajax({
				url : '<%=request.getContextPath() %>/conference/conferenceList.do',
				type : 'post',
				data : {
					"choice" : "reserve",
					"startTime" : startTime,
					"endTime" : endTime,
					"conferenceRoom" : conference
				},
				success : function(res){
					
					if (res == 0) {
						alert('이미 예약중인 회의실입니다.!!!!');
					}
					
					showList();		
					
				},
				dataType : "json",
				
				error : function(xhr){
					console.log(xhr);
				}
				
			});
		});
	});
}



$('#conference').on('click',showList);

function showList(){
$.ajax({
	url : '<%=request.getContextPath() %>/conference/conferenceList.do',
	type : 'post',
	data : {
		"choice" : "list"
	},
	success : function(res){
		let code  = "<table border='1'>";
		 code += "<thead>";
		 code += "<tr>";
		 code += "	<th>예약번호</th><th>직원번호</th><th>이 름</th><th>회의실번호</th><th>시작시간</th><th>종료시간</th>";
		 code += "</tr>";
		 code += "</thead>";
		 code += "<tbody>";
		
		$.each(res, function(i,v){
			code +="<tr><td><a href='javascript:void(0);' onclick='deleteRes("+v.res_no+");'>" + v.res_no +"</a></td>";
			code +="<td>" + v.mem_no +"</td>";
			code +="<td>" + v.mem_nm +"</td>";
			code +="<td>" + v.con_no +"</td>";
			code +="<td>" + v.res_start.toString().split(":")[0]+":"+ v.res_start.toString().split(":")[1] +"</td>";
			code +="<td>" + v.res_end.toString().split(":")[0]+":"+ v.res_end.toString().split(":")[1]  +"</td></tr>";
		});
		code += "</tbody></table><input type='button' id='resBtn' onclick='res();' value='예약하기'>";
//			code += "</tbody></table><input type='button' id='conDelBtn' onclick='deleteRes();' value='예약취소'>";
		$('#top').html(code);	
		console.log(res);	
	},
	error : function(xhr){
		console.log(xhr);
		console.log(xhr.status);
	},
	dataType:'json'
});
}


////////////////////////////////////////////////////////////////여기부턴 이인환



$('#sanctionBtn').on('click', documentList);

function documentList() {
	
	$.ajax({
		url : '<%=request.getContextPath()%>/sanction/sanctionDocument.do',
		type : 'post',
		data : {
			"documentSelect" : "휴가신청서"
		},
		dataType : "json",
		success : function (res) {
			console.log(res);
			let str = "";
			str += "<ol>";
			$.each(res, function (i,v) {
				str += "<li>";
				str += "결재번호 : " + v.san_no;
				str += "<br>";
				str += "결재제목 : " + v.san_title;
				str += "<br>";
				str += "결재구분명 : " + v.san_nm;
				str += "<br>";
				str += "작성일 : " + v.san_write_date;
				str += "<br>";
				str += "결재승인일 : " + v.san_conf_date;
				str += "<br>";
				str += "내용 : " + v.san_content;
				str += "<br>";
				str += "결재기한 : " + v.san_deadline;
				str += "<br>";
				str += "결재상태 : " + v.san_status;
				str += "<br><br>";
				str += "</li>";
			});
			str += "</ol>";
			str += "<button id='docInsertBtn' value='이나영.val()'>추사랑"
			$('#top').html(str);
			$('#docInsertBtn').on('click', docInsert);
		},
		error : function (xhr) {
			console.log(xhr);
		}
	});
	
}

	
	function docInsert() {
// 		let str = "";
// 			str += "";
			
// 		$.ajax({
<%-- 			url:'<%=request.getContextPath()%>/sanction/sanctionDocument.do', --%>
// 			type: 'post',
// 			data: {
// 				"documentSelect" : "휴가신청서"
// 			},
// 			dataType: 'json',
// 			success: function(res){
				
// 			},
// 			error function(xhr) {
// 				console.log(xhr);
// 			}:
				
// 		});

	}

// ------------------------------------------------------------------

$('#freeBtn').on('click', freeList);
// $('#notiBtn').on('click', noticeList);
	let board_noArr = new Array();
	
	let fonts = ['맑은 고딕', '돋움', '궁서', '굴림', '굴림체', '궁서체', '나눔 고딕', '바탕', '바탕체', '새굴림', 'HY견고딕', 'HY견명조', 'HY궁서B', 'HY그래픽M', 'HY목각파임B', 'HY신명조', 'HY얕은샘물M', 'HY엽서L', 'HY엽서M', 'HY중고딕', 'HY헤드라인M', '휴먼매직체', '휴먼모음T', '휴먼아미체', '휴먼둥근헤드라인', '휴먼편지체', '휴먼옛체'];

let board_no1 = "";

function noticeList(){
	$.ajax({
		url : '<%=request.getContextPath()%>/board/board.do',
		type : 'post',        
		data : {
		 "choice" : "공지"
		},
		 dataType : "json",
		 success : function(res){
			console.log(res);
				
			let str = "";
			str += "<ol>";
			$.each(res, function(i,v){
				str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
				str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
					str += "제목 : " + v.board_title;
					str += "<br>";
					str += "저자 : " + v.board_writer;
					str += "<br><hr>";
				str += "</li>";
				});
				str += "</ol>";
				str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
				
				$('#top').html(str);
				$('.boardInsertBtn').on('click', boardInsert);
				
		  },
		    
		    error :function(xhr){
				console.log(xhr);
				console.log(xhr.status);
		    }
	});
}
/////////////////////////////////////////



function freeList(){
$.ajax({
  url : '<%=request.getContextPath()%>/board/board.do',
  type : 'post', 
  data : {
	  "choice" : "자유"
	  },
dataType : "json",
  success : function(res){
		console.log(res);
			
		let str = "";
		str += "<ol>";
		$.each(res, function(i,v){
		board_noArr.push( v.board_no );
		str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
		str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
			str += "제목 : " + v.board_title;
			str += "<br>";
			str += "저자 : " + v.board_writer;
			str += "<br><hr>";
		str += "</li>";
		});
		str += "</ol>";
		str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
		
		$('#top').html(str);
		$('.boardInsertBtn').on('click', boardInsert);
		
		
    },
    
    error :function(xhr){
		console.log(xhr);
		console.log(xhr.status);
    }
});
}

function f_detail(board_no){
board_no1 = board_no;
	console.log("f_detail" + board_no);
	$.ajax({
	url : '<%=request.getContextPath() %>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "세부",
	    	"board_no"	 : board_no
	    },
	    dataType : "json",
	    success : function(res){
	    	let str = "";
			str += "<ul>";
			str += "<li>";
			str += "제목 : " + res.board_title;
			str += "<br>";
			str += "저자 : " + res.board_writer;
			str += "<br>";
			str += "내용 : " + res.board_content;
			str += "<br>";
			str += "날짜 : " + res.board_date;
			str += "<br>";
		
			str += "<br><hr>";
			str += "</li>";
			str += "</ul><br>";
			str += "<div id='boardComment'>";
			
			str += "</div><br>";
			commentList(board_no);
			str += "<input type='button' class='boardDeleteBtn' value='게시글 삭제' onclick='boardDelete(\""+board_no+"\");'/></div>";
			$('#top').html(str);
			
				},
	    error : function(xhr) {
	    	console.log(xhr);
	    	console.log(xhr.status);
	    }

});
}

function commentList(board_no){
$.ajax({
 	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {	// 서블릿으로 보내줄거만 데이터로
	    	"choice" : "댓글리스트",
	    	"board_no" : board_no,
	    },
        dataType : "json",
	    success : function(res){
	    	console.log(res);
		 	let str = "";
			str += "<ul>";
			$.each(res, function(i,v){
				str += "<li>";
				str += "작성자 - " + v.mem_nm;
				str += "<br>";
				str += "날짜 - " + v.comm_time;
				str += "<br>";
				str += "내용 - " + v.comm_content;
				str += "<br>";
				str += "<input type='button' class='boardCommentDeleteBtn' value='댓글 삭제' onclick='boardCommentDelete(\""+v.comm_no+"\");'/>";
				str += "</li>";
			});
			str += "</ul><br>";
			//텍스트 추가할까?
			str += "<textarea id='comment' class='comment' name='comment'";
				str += "  autofocus required wrap='hard' style='width: 350px; resize: none; padding:20px; height: 30px;'></textarea>";
				str += "<div><input type='button' class='boardCommentBtn' value='댓글 추가' onclick='boardCommentInsert(\""+board_no+"\");'>";
			$('#boardComment').html(str);
		},
        
		error : function(xhr){
			console.log(xhr);
		}
	});


}

function boardCommentDelete(comm_no){
$.ajax({
 	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "댓글삭제",
	    	"comm_no" : comm_no
	    },
	    success : function(res){
	    	f_detail(board_no1);
		},
        dataType : "json",
        
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function boardCommentInsert(board_no){
let board_comm = $('#comment').val();

$.ajax({
 	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "댓글추가",
	    	"board_no" : board_no,
	    	"board_comm" : board_comm
	    },
	    success : function(res){
	    	f_detail(board_no);
//				window.reload();
		},
        dataType : "json",
        
		error : function(xhr){
			console.log(xhr);
		}
	});


}

function boardInsert(){
let str = "";
str +="	<select name='board_nm' id='board_nm'>";
str +="		<option value='자유'>자유</option>";
str +="		<option value='공지'>공지</option>";
str +="	</select> &nbsp; &nbsp; ";
str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' maxlength='20'><br>";
str += "<textarea class='summernote' id='board_content' name='editordata'></textarea>";

str += "<input type='button' id='boardInsert' value='추가'></input><br>";

$('#top').html(str); 

$('.summernote').summernote({
	 height: 150,
	 lang: "ko-KR" 
  });
		
$('#boardInsert').on('click', function(){
let board_nm = $('#board_nm').val();
let board_title = $('#board_title').val();
let board_content = $('#board_content').val();

console.log(board_nm);


$.ajax({
	url : '<%=request.getContextPath()%>/board/board.do',
    type : 'post', 
    data : {
    	"choice" : "추가",
    	"board_nm" : board_nm,
    	"board_title" : board_title,
    	"board_content" : board_content
    },
    success : function(res){
		freeList(); 
	},
    dataType : "json",
    
	error : function(xhr){
		console.log(xhr);
	}
});
});
}



function boardDelete(board_no){
console.log("보드넘버"+board_no);
$.ajax({
	url : '<%=request.getContextPath()%>/board/board.do',
    type : 'post', 
    data : {
		"choice" : "삭제",
		"board_no" : board_no,
    },
    dataType : "json",
    success : function(res){
    	console.log('아무거나');
		freeList();
	},
    
	error : function(xhr){
		console.log(xhr);
	}
});
}
	
</script>


</body>
</html>
