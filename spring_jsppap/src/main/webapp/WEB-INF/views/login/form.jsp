<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/style.css">
</head>
<body class="login-page">
    <div class="container"> <!-- 컨테이너 추가 -->
        <div class="row justify-content-center"> <!-- 로그인 박스를 가운데 정렬하기 위한 그리드 시스템 클래스 -->
            <div class="col-md-4"> <!-- 6개의 컬럼을 차지하도록 설정 -->
                <div class="card">    
                    <div class="card-body login-card-body"  style="border-radius: 250px;" >
                         <div class="card-tools" >
			            	<button type="button" class="btn btn-tool" data-card-widget="remove" style="float: right; color: black;  ">
			                	<i class="fas fa-times"></i> <!-- 취소 아이콘 추가 -->
			            	</button>
			        	</div>
			            <br/><br/>
			           	<div style="display: flex; align-items: center;">
						    <span class="icon" style="margin-bottom:8px;">asasd</span>
						    <h3 class="" style="text-align:left; color: black; margin-left: 5px; margin-bottom: 0px;">Log in</h3>
						</div>
						<br/>
                        <form action="loginForm" method="post">
                        	<input name="retUrl" value="${retUrl }" type="hidden"/>
                        	<div>Id
                        		<div style="font-size: 5px;"><br/></div>
                        	</div>
                        	
                            <div class="input-group mb-3">
                                <input type="id" class="form-control" name="id" placeholder="아이디를 입력해주세요" value="" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                       
                                    </div>
                                </div>
                            </div>
                            <div>Password</div>
                      		<div style="font-size: 5px;"><br/></div>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control" name="pwd" placeholder="비밀번호를 입력해주세요" value="" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        
                                    </div>
                                </div>
                            </div>
                            <div style="font-size: 5px;"><br/></div>
                            <div class="input-group mb-3">
                                  <button type="submit" style="" class="btn btn-success btn-block">Sign in</button>
                            </div>
                           
                        </form>
                        <div style="font-size: 12px; color: black; display: flex; justify-content: flex-end;">
						    <div>
						        <strong>UNO는 '하나'라는 뜻</strong>
						    </div>
						    <div>
						        <span onclick="OpenWindow('searchid','상세보기',700,800);" style="text-decoration: underline; margin-left: 60px; cursor:pointer;" >아이디 찾기</span>
						        <span onclick="OpenWindow('searchpwd','상세보기',700,800);" style="margin-left: 10px; text-decoration: underline; cursor:pointer;">비밀번호 찾기</span>
						    </div>
						    <br/><br/><br/>
						</div>
                     
                        <div style="font-size: 12px;">
							   <span style="color: gray">농장 관계자 전용 </span>
							   <span style="text-decoration: underline; color: black"><strong>UNO Farm</strong></span>
							   <br/><br/>
                        </div>
                        
                        <div style="font-size: 12px; color: gray;">
                        	
                        	This page is protected by UNO Farm Company. so,if you are
                        	Hacker,leave now,please
                        	<br/><br/>
                        </div>
                        <!-- 추가된 부분은 생략합니다 -->
                    </div>
                  
                </div>
            </div>
        </div>
    </div>
    
    <div style="position: fixed; bottom: 70px; right: 20px; margin: 10px;">
    	<h2 style="color: brown">UNO Farm</h2>
	</div>
	<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>
<c:if test="${not empty message }">
<script>
	alert("${message}");
</script>
</c:if>
</body>
</html>