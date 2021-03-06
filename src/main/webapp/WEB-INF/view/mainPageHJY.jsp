<%@page import="ddit.vo.SanctionDocumentVO"%>
<%@page import="ddit.vo.MemberVO"%>
<%@page import="ddit.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/board.css">

 <script src="../js/jquery-3.6.0.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
<!--   <script src="../js/board.js"></script> -->
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {
    height: 550px
    }
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    #divsel{
    background-color: rgb(255 255 255 / 53%);
    position: relative;
    }
    #divsel::before{
    	background-image: url(../images/company.JPG);
    	content: '';
    	opacity: 0.5;
    	position: absolute;
    	top:0px;
    	left:0px;
    	right:0px;
    	bottom:0px;
    }
    #containerdiv{
    }
  </style>
  
 
  
</head>
  <%
  	HttpSession getsession = request.getSession();
  	String mem_id = (String)getsession.getAttribute("id");
  	int mem_no = (int)getsession.getAttribute("memNo");
  	System.out.println("mainpage.jsp ID = "+mem_id);
  	List<BoardVO> list = (List<BoardVO>)request.getAttribute("");
  	List<MemberVO> memberInfo = (List<MemberVO>)request.getAttribute("memInfo");
  	List<SanctionDocumentVO> sanDoc = (List<SanctionDocumentVO>)request.getAttribute("");
  %>
  
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"></a>
      <div id="navbar-brand">
      	<img src="../images/logo.JPG" width="15%" height="5%"><br>
      </div>
    </div>
    <form action="Login.jsp">
    <div class="collapse navbar-collapse" id="myNavbar">
  
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </ul>
    </div>
    </form>
  </div>
</nav>
<div id="containerdiv" class="container-fluid">
  <div class="row content">
  <div id="divsel"><!-- style="background-color: rgb(255 255 255 / 53%)" -->
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Menu</h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Main Page</a></li>
        <li id="company"><a href="#section2">????????????</a></li>
        <li id="mypage"><a href="#section3">???????????????</a></li>
        <li><a href="#section3">????????????</a></li>
        <li><a href="#section3">??????</a></li>
        <li><a href="#section3">Calendar</a></li>
        <li id="document"><a href="#section3">????????????</a></li>
        <li><a href="<%=request.getContextPath() %>/conference/conferenceList.do">?????????</a></li>
        <li><a id="board">?????????</a></li>
        <li><a href="#section3">????????? ?????????</a></li>
      </ul><br>
    </div>
    <br>
    
   <article>
    <div class="col-sm-9">
      <div class="well">
        <h4>Na's Company</h4>
        <p>Company Introduction</p>
      </div>
      </div>
    </article>
    
       <div class="row bg"> 
       
        <div class="col-sm-4">
          <div class="well">
            <p>????????????</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Calendar</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>To Do List</p> 
          </div>
        </div>
        
      </div>
      
      
  </div>
  
    </div>
    
 </div>


<footer class="container-fluid text-center">
  <p>??????: ??????????????? ?????? ????????? / ?????? : ?????????</p>
  <p>???????????? : 1588-1159 / mail : abcd@naver.com</p>	
  <p>??????????????? : 314-86-24510</p>
</footer>

 <script type="text/javascript">
 $(function() {
	$('#mypage').on("click",function(){
		<%
		request.setAttribute("mem_id", mem_id);
		request.setAttribute("mem_no", mem_no);
		System.out.println("???????????????????????? ID = "+mem_id);
		System.out.println("???????????????????????? ID = "+mem_no);
		%>
		location.href = "<%=request.getContextPath()%>/member/mypage.do";
	});
	
	$('#document').on("click", function(){
		<%
		request.setAttribute("mem_id", mem_id);
		request.setAttribute("mem_no", mem_no);
		%>
		location.href = "<%=request.getContextPath()%>/sanction/sanctionDocument.do";
	});
 });
 
 
  	$('#board').on('click', function() {
		$.ajax({
			url : '<%=request.getContextPath() %>/board/board.do',
			type : 'post',
			success : function(res) {
				re_value = res;
				console.log(re_value);
				let code = `<div><section><h1 id="boardid">?????? ?????? ?????????</h1></section></div>`;
				code += `<input class="noti" type="button" value="???????????????">`;
				code += `<input class="free" type="button" value="???????????????">`;
				$('.row.content').html(code);
				
			 $('.free').on('click', function(){
				    $.ajax({
				      url : '<%=request.getContextPath() %>/board/board.do',
				      type : 'post',        
				      success : function(res){
				        let code1 = `<h3> ?????? ?????? <h3>`;
				          $('#boardid').html(code1);
				        },
				        error :function(xhr){
							console.log(xhr);
				        }
				    });
				  }); 
			//
			 $('.noti').on('click', function(){
				    $.ajax({
				      url : '<%=request.getContextPath() %>/board/board.do',
				      type : 'post',        
				      success : function(res){
				        let code1 = `<h3> ????????????????????? <h3>`;
				          $('#boardid').html(code1);
				        },
				        error :function(xhr){
							console.log(xhr);
				        }
				    });
				  }); 
					  
			},
			error :function(xhr){
				console.log(xhr);
			}
		});
	});
  	

  	
  	
  </script>
  
<script type="text/javascript">
$('.btn').on('click', function() {
	code ="<section><h2><%=mem_id %></h2></section>"
	$('main').html(code)
});


</script>
</body>
</html>
