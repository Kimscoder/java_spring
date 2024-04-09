<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무인 운송</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/allstyle.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/framestyle.css">

</head>
<body>
<nav class="navbar">
	
	      <div class="navbar__logo">
	        <span class="icon" style="margin-bottom:8px;">asasd</span>
	        <a href="" style="font-size: 20px; "><strong>UNO Farm</strong></a>
	      </div>
	
	      <ul class="navbar__menu">
	        <li><a href="#">홈</a></li>
	        <li><a href="#">공지사항</a></li>
	        <li><a href="#">문의</a></li>
	        <li><a href="#">직거래판매</a></li>
	        <li><a href="#">재고 관리</a></li>
	        <li><a href="#">관제시스템</a></li>
	        <li><a href="#">무인운송</a></li>
	      </ul>
	      
	      <div class="info">
         <div class="row">
          	&nbsp;&nbsp;<span style="color: lightgray;"> ${loginUser.authority }</span>
         	&nbsp;&nbsp;<a href="" class="d-block">${loginUser.username }님 환영합니다 </a>&nbsp;&nbsp;&nbsp;&nbsp;
         	<button onclick="location.href='<%=request.getContextPath() %>/common/logout.do';" class="btn btn-xs btn-primary col-xs-3" type="button">LOGOUT</button>
         </div>
        </div>
	</nav>
	<br/><br/><br/>
	<div class="container" style="float: left">
	    <div>
	      <iframe id="video" src="https://www.youtube.com/embed/ZbZSe6N_BXs" allowfullscreen></iframe>
		</div>
	    <div id="content-container">
	      <!-- 여기에 오른쪽에 들어갈 내용을 추가합니다. -->
	      <p><h2>운송 영상</h2></p>
	      <p style="color:gray">운송 영상 실시간 송출</p>
	    </div>
	    
			   
		 <div class="table-container">
			  <table>
			    <thead>
			      <tr>
			        <th><strong>운송품목</strong></th>
			        <th><strong>운송 수량</strong></th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td><input type="text" placeholder="운송품목을 입력하세요"></td>
			        <td><input type="number" placeholder="운송 수량을 입력하세요"></td>
			      </tr>
			    </tbody>
			  </table>
			  <button>신청</button>
			</div>
  	</div>
  			<div >
	  			<span class="current-time" style="float:left; margin-left:30px; background-color:#E4E4E4 "> 현재시각</span>
	  			<span class="current-time" style="float:left; margin-left: 8px"> 2024-04-08</span>
	  			<br/><br/>
			</div>
				<br/><br/>
		
		  <div class='current-time' style="margin-left: 30px; margin-right: 30px;">
    			<div class='card-header'>
        			<h2>관제 로그</h2>
			        <div></div>
			    </div>
			    <div class="card-body table-responsive p-0">
			        <table class="table table-hover text-nowrap">
			            <thead>
			                <tr>
			                    <th>수거 번호</th>
			                    <th>운송 번호</th>
			                    <th>품목</th>
			                    <th>수량</th>
			                    <th>운송상태</th>
			                    <th>측정시간</th>
			                </tr>
			            </thead>
			            <tbody>
			                <tr></tr>
			                <tr></tr>
			                <tr></tr>
			                <tr></tr>
			                <tr></tr>
			                <tr></tr>
			            </tbody>
			        </table>
			    </div>
			</div>
</body>
</html>