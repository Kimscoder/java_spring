<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/navbarstyle.css">
<title>main page</title>
</head>
<body>
	<nav class="navbar">
	
	      <div class="navbar__logo">
	        <span class="icon" style="margin-bottom:8px;">asasd</span>
	        <a href="" style="font-size: 20px; "><strong>UNO Farm</strong></a>
	      </div>
	
	       <ul class="navbar__menu">
		     
		 
		      <c:forEach items="${menuList }" var="menu">
		      <li >
		        <a href="javascript:subMenu_go('${menu.mcode }');goPage('<%=request.getContextPath() %>${menu.murl}','${menu.mcode }');" class="nav-link">${menu.mname }</a>
		      </li>
		      </c:forEach>
		    </ul>
	      
	      <div class="info">
         <div class="row">
          
         	&nbsp;&nbsp;<a href="" class="d-block">${loginUser.name }님 환영합니다 </a>&nbsp;&nbsp;&nbsp;&nbsp;
         	<button onclick="location.href='<%=request.getContextPath() %>/logout.do';" class="btn btn-xs btn-primary col-xs-3" type="button">LOGOUT</button>
         </div>
        </div>
	</nav>
<div class="content-wrapper">
    <iframe name="ifr" src="<%=request.getContextPath()%>/main" frameborder="0" style="width:100%;height:85vh;"></iframe> 				
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.8/handlebars.min.js"></script>
<!-- handlebars  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template"  id="subMenu-list-template" >
{{#each .}}		
<li class="nav-item subMenu" >
	<a href="javascript:goPage('<%=request.getContextPath() %>{{murl}}','{{mcode }}');"	class="nav-link">
		<i class="{{micon}}"></i>
		<p>{{mname}}</p>
	</a>
</li>
{{/each}}
</script>

<script>
var sub_func= Handlebars.compile($("#subMenu-list-template").html());
function subMenu_go(mCode){
	//alert(mCode);
	
	if(mCode=="M000000") {
		$('.subMenuList').html("");
		return;
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
		method:"get",
		success:function(data){
			$('.subMenuList').html(sub_func(data));
		}
	});
}
function goPage(url,mCode){
	
	$('iframe[name="ifr"]').attr("src",url);
	
	
	
	var renewURL = location.href;
	//현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
	renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
	
	if(mCode != 'M000000'){
		renewURL += "?mCode="+mCode;
	}
	//페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
	history.pushState(mCode,null,renewURL);
}
</script>
<c:if test="${not empty menu}">
<script>
goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
subMenu_go('${menu.mcode}'.substring(0,3)+"0000");

</script>
</c:if>
</body>
</html>