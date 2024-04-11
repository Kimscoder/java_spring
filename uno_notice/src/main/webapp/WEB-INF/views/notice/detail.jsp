<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/WEB-INF/views/module/header.jsp"%>
<%@ include file="/WEB-INF/views/module/nav.jsp"%>
<div class="wrapper">

	<h3>공지사항</h3>
	<hr>
	<div class="container">
		<section class="content">
			<div class="row">
				<div class="col-md-12">

					<div class="card-read">


						<!-- /.card-header -->
						<div class="form-group">
							<div class="form-group col-sm-12">
								<div id="g_title" class="form-control"
									style="border: none; background-color: transparent;">
									<h4>
										<strong>${notice.g_title}</strong>
									</h4>
								</div>
							</div>
						</div>





						<div class="card-body">
							<h6>
								농장주 <span class="mailbox-read-time float-right"> <fmt:formatDate
										value="${notice.g_createDate}" pattern="yyyy-MM-dd" />
								</span>
							</h6>
						</div>

						<!-- /.mailbox-read-info -->
						

						<div class="mailbox-read-message" text-align="center">
							<div class="form-group col-sm-12">

								<div>${notice.g_content }</div>
								<!-- /.mailbox-read-message -->

							</div>
						</div>
					</div>
				</div>
			</div>











			<div class="card-footer">
				<div class="float-right">
					<button type="button" class="btn btn-outline-danger"
						onclick="location.href='remove?gno=${notice.gno }';">삭 제</button>

					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-outline-secondary"
						onclick="location.href='modifyForm?gno=${notice.gno }';">수
						정</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-outline-info"
						onclick="CloseWindow();">목 록</button>
				</div>

				<div class="float-left">
					<!-- 오른쪽에 추가할 버튼 -->
					<button type="button" class="btn btn-outline-secondary"
						onclick="moveToPrev();">이 전</button>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-outline-secondary"
						onclick="moveToNext();">다 음</button>
				</div>

			</div>

		</section>

	</div>
</div>
<%@ include file="/WEB-INF/views/module/common_js.jsp"%>
<script>
	function CloseWindow() {
		window.location.href = 'list.do';
	}

	function moveToPrev() {
		// 이전 글의 번호(prevNum)를 가져옵니다.
		var prevNum = $
		{
			notice.prevNum
		}
		;
		// 이동할 URL을 생성합니다.
		var url = "/prevPost?prevNum=" + prevNum;
		// 이동합니다.
		window.location.href = url;
	}

	// 다음 글로 이동하는 함수
	function moveToNext() {
		// 다음 글의 번호(nextNum)를 가져옵니다.
		var nextNum = $
		{
			notice.nextNum
		}
		;
		// 이동할 URL을 생성합니다.
		var url = "/nextPost?nextNum=" + nextNum;
		// 이동합니다.
		window.location.href = url;
	}
</script>


<%@ include file="/WEB-INF/views/module/footer.jsp"%>