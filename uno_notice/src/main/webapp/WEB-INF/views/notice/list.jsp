<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/WEB-INF/views/module/header.jsp"%>
<%@ include file="/WEB-INF/views/module/nav.jsp"%>



<div class="wrapper">

	<h1></h1>
	<div class="container">

		<div class="col-md-12">

			<!-- Content Header (Page header) -->
			<section class="content">

				<div class="row">

					<div class="col-sm-12">


						<div class="search">
							<div class="input-group mb-3">
								<h3 class="mr-3">공지사항</h3>
								<select class="form-control col-md-1" name="perPageNum"
									id="perPageNum">
									<option value="10" ${pageMaker.perPageNum==10 ? 'selected':'' }>정렬</option>
									<option value="20" ${pageMaker.perPageNum==20 ? 'selected':'' }>20개씩</option>
									<option value="30" ${pageMaker.perPageNum==30 ? 'selected':'' }>30개씩</option>
									<option value="50" ${pageMaker.perPageNum==50 ? 'selected':'' }>50개씩</option>


								</select> <select class="form-control col-md-1" name="searchType"
									id="searchType">
									<option value="tc"
										${pageMaker.searchType eq 'tc' ? 'selected':'' }>전 체</option>
									<option value="t"
										${pageMaker.searchType eq 't' ? 'selected':'' }>제 목</option>

									<option value="c"
										${pageMaker.searchType eq 'c' ? 'selected':'' }>내 용</option>

								</select> <input type="text" class="form-control rounded-5 mr-3 "
									name="keyword" value="${pageMaker.keyword }"
									placeholder="궁금한 점이 있다면 검색해보세요." /> <span
									class="input-group-append"> </span>
								<form class="ml-1">
									<button type="button" class="btn btn-info custom-shadow"
										id="searchBtn" onclick="search_list(1);"
										data-card-widget="search" style="background-color: #426B1F;">
										검색</button>



									<!-- SEARCH FORM -->
									<button type="button" class="btn btn-info custom-shadow"
										id="registBtn" onclick="window.location.href='registForm.do';"
										style="background-color: #426B1F;">등록</button>
								</form>


							</div>
						</div>
					</div>
					<div class="card-body table-responsive p-0">
						<table class="table table-hover text-nowrap">
							<tr style="font-size: 0.95em; text-align: center;">
								<th style="width: 10%;">글 번호</th>
								<th style="width: 55%;">제 목</th>

								<th style="width: 5%;">작성자</th>
								<th>작성일자</th>
								<th style="width: 5%;">조회수</th>
							</tr>

							<c:if test="${empty noticeList}">
								<td colspan="6">해당내용이 없습니다.</td>
							</c:if>
							<c:forEach items="${noticeList}" var="notice">

								<tr style='font-size: 0.85em;'>
									<td>${notice['gno']}</td>
									<td id="boardTitle"
										style="text-align: left; max-width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
										<a href="/notice/detail?gno=${notice['gno']}"> <span
											class="col-sm-12">${notice['g_title']}</span>
									</a>

									</td>
									<td>${notice['id']}</td>
									<td style="text-align: center;"><fmt:formatDate
											value="${notice['g_createDate']}" pattern="yyyy-MM-dd" /></td>
									<td><span class="badge bg-red">${notice['g_viewCnt']}</span></td>
								</tr>
							</c:forEach>
						</table>

						<div class="card-footer">

							<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
						</div>

					</div>
				</div>
			</section>
		</div>
	</div>

</div>




<%@ include file="/WEB-INF/views/module/common_js.jsp"%>

<script>
	function openDetailWindow(gno) {
		var url = 'detail.do?=gno' + gno + '&form=list';
		OpenWindow(url, '상세보기', 800, 700);
	}

	function OpenWindow(url, title, width, height) {
		window.open(url, title, 'width=' + width + ',height=' + height);
	}
	
</script>
<%@ include file="/WEB-INF/views/module/footer.jsp"%>