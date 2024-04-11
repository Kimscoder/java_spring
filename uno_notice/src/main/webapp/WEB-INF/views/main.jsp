<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/WEB-INF/views/module/header.jsp"%>
<%@ include file="/WEB-INF/views/module/nav.jsp"%>

<div class="wrapper">
	<h1>공지사항</h1>


	<%
		out.println(request.getAttribute("noticeList"));
	%>
	<hr>
	<%=request.getAttribute("noticeList")%>
	<hr>
	${requestScope.noticeList }
	<hr>
	${noticeList }



	<div class="container">
		<!-- Content Header (Page header) -->
		<section class="content">

			<div class="row">

				<div class="col-sm-12">

					<div class="search">


						<div class="input-group mb-3">
							<input type="text" class="form-control rounded-0"
								placeholder="궁금한 점이 있다면 검색해보세요."> <span
								class="input-group-append">
								<button type="button" class="btn btn-info btn-flat">
									검색 <i class="fa fa-search"></i>
								</button>
							</span>



							<!-- SEARCH FORM -->
							<form>
								<button type="button" class="btn btn-primary" id="searchBtn"
									onclick="regist_go();">등록</button>
							</form>

						</div>
					</div>
				</div>
				<div class="card-body table-responsive p-0">
					<table class="table table-hover text-nowrap">
						<tr style="font-size: 0.95em; text-align: center;">
							<th style="width: 10%;">글 번호</th>
							<th style="width: 40%;">제 목</th>

							<th style="width: 15%;">작성자</th>
							<th>작성일자</th>
							<th style="width: 10%;">조회수</th>
						</tr>

						<c:if test="${empty noticeList}">
							<td colspan="6">해당내용이 없습니다.</td>
						</c:if>




						<c:forEach items="${noticeList}" var="notice">


							<tr style='font-size: 0.85em;'>
								<td>${notice['gno']}</td>
								<td id="boardTitle"
									style="text-align: left; max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
									<a href="javascript:void(0);"
									onclick="openDetailWindow(${notice['gno']});"> <span
										class="col-sm-12">${notice['g_title']}</span>
								</a>
								</td>
								<td>${notice['id']}</td>
								<td><fmt:formatDate value="${notice['g_createDate']}"
										pattern="yyyy-MM-dd" /></td>
								<td><span class="badge bg-red">${notice['g_viewCnt']}</span></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="card-footer">
					<div style="display:${!empty noticeList ? 'visible':'none' };">
						<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
					</div>

				</div>
			</div>
	</div>

	</section>

</div>


<%@ include file="/WEB-INF/views/module/common_js.jsp"%>

<script>

</script>
<%@ include file="/WEB-INF/views/module/footer.jsp"%>