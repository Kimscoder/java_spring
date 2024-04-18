<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/style.css">
<style>

</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-4">
			<br/><br/><br/>
				<div class="card">
					<div class="card-body login-card-body" style="border-radius:15px;">
						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="remove" style="float: right; color: black;  ">
			                	<i class="fas fa-times"></i> <!-- 취소 아이콘 추가 -->
			            	</button>
						</div>
						<br/><br/>
			           	<div style="display: flex; align-items: center;">
						    <span class="icon" style="margin-bottom:8px;">asasd</span>
						    <h3 class="" style="text-align:left; color: black; margin-left: 5px; margin-bottom: 0px;">아이디찾기</h3>
						</div>
						<br/>
						<form action="searchid" method="post">
                        	<div>이름
                        		<div style="font-size: 5px;"><br/></div>
                        	</div>
                        	
                            <div class="input-group mb-3">
                                <input type="text" name="name" class="form-control" placeholder="농장주명을 입력해주세요" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                       
                                    </div>
                                </div>
                            </div>
                            <div>전화번호
                        		<div style="font-size: 5px;"><br/></div>
                        	</div>
                        	
                            <div class="input-group mb-3">
                                <input type="text" name="phone" class="form-control" placeholder="'-'빼고 숫자만 입력" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                       
                                    </div>
                                </div>
                            </div>
                            <div>생년월일
                        		<div style="font-size: 5px;"><br/></div>
                        	</div>
                        	
                            <div class="input-group mb-3">
                                <input type="text" name="birthdate" class="form-control" placeholder="생년월일을 입력해주세요" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                       
                                    </div>
                                </div>
                            </div>
                            <div>이메일</div>
                      		<div style="font-size: 5px;"><br/></div>
                            <div class="input-group mb-3">
                                <input id="email" type="text" name="email" class="form-control" placeholder="이메일을 입력해주세요" required>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        
                                    </div>
                                </div>
                            </div>
                            <div style="font-size: 5px;"><br/></div>
                            <div class="input-group mb-3">
                                  <button type="submit" id=findBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
								  <button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>                            </div>
                          
                        </form>
					</div>
				</div>
			</div>
		</div>
</div>
</body>
</html>