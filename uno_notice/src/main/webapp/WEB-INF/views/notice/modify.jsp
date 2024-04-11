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


						<form role="form" method="post" action="modify.do"
							name="modifyForm">
							<input type="hidden" name="gno" value="${notice.gno }" />
							<div class="form-group">
								<label for="id">작성자</label> <input type="text" id="id" name="id"
									class="form-control" value="농장주" readonly>
							</div>
							<div class="form-group">
								<label for="g_title">제목</label> <input type="text" id="g_title"
									value="${notice.g_title }" name="g_title" class="form-control"
									placeholder="제목을 쓰세요 ">

							</div>

							<div class="note-editor note-frame card">
								<div class="note-dropzone">
									<div class="note-dropzone-message"></div>
								</div>
								<div class="note-toolbar card-header" role="toolbar">
									<div class="note-btn-group btn-group note-style">
										<div class="note-btn-group btn-group">
											<button type="button"
												class="note-btn btn btn-light btn-sm dropdown-toggle"
												tabindex="-1" data-toggle="dropdown" title=""
												aria-label="Style" data-original-title="Style">
												<i class="note-icon-magic"> </i>
											</button>
											<div class="note-btn-group btn-group note-font">
												<button type="button"
													class="note-btn btn btn-light btn-sm note-btn-bold"
													tabindex="-1" title="" aria-label="Bold (CTRL+B)"
													data-original-title="Bold (CTRL+B)">
													<i class="note-icon-bold"></i>
												</button>

												<button type="button"
													class="note-btn btn btn-light btn-sm note-btn-underline"
													tabindex="-1" title="" aria-label="Underline (CTRL+U)"
													data-original-title="Underline (CTRL+U)">
													<i class="note-icon-underline"></i>
												</button>
												<button type="button" class="note-btn btn btn-light btn-sm"
													tabindex="-1" title=""
													aria-label="Remove Font Style (CTRL+\)"
													data-original-title="Remove Font Style (CTRL+\)">
													<i class="note-icon-eraser"></i>
												</button>
											</div>



											<div class="note-btn-group btn-group note-fontname">
												<div class="note-btn-group btn-group">
													<button type="button"
														class="note-btn btn btn-light btn-sm dropdown-toggle"
														tabindex="-1" data-toggle="dropdown" title=""
														aria-label="Font Family" data-original-title="Font Family">
														<span class="note-current-fontname"
															style="font-family: &amp; amp;">Segoe UI</span>

													</button>
												</div>
											</div>

											<div class="note-btn-group btn-group note-color">
												<div
													class="note-btn-group btn-group note-color note-color-all">
													<button type="button"
														class="note-btn btn btn-light btn-sm note-current-color-button"
														tabindex="-1" title="" aria-label="Recent Color"
														data-original-title="Recent Color"
														data-backcolor="#FFFF00" data-forecolor="#000000">
														<i class="note-icon-font note-recent-color"
															style="background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);"></i>
													</button>
													<button type="button"
														class="note-btn btn btn-light btn-sm dropdown-toggle"
														tabindex="-1" data-toggle="dropdown" title=""
														aria-label="More Color" data-original-title="More Color">

													</button>
												</div>

												<div class="note-dropdown-menu dropdown-menu" role="list">
													<div class="note-palette">
														<div class="note-palette-title">Background Color</div>
														<div>
															<button type="button"
																class="note-color-reset btn btn-light btn-default"
																data-event="backColor" data-value="transparent">Transparent</button>
														</div>
														<div class="note-holder" data-event="backColor"></div>
													</div>
												</div>


												<!-- para -->
												<div class="note-btn-group btn-group note-para">
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title
														aria-label="Unordered list (CTRL+SHIFT+NUM7)"
														data-original-title="Unordered list (CTRL+SHIFT+NUM7)">
														<i class="note-icon-unorderedlist"></i>
													</button>
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title
														aria-label="Ordered list (CTRL+SHIFT+NUM8)"
														data-original-title="Ordered list (CTRL+SHIFT+NUM8)">
														<i class="note-icon-orderedlist"></i>
													</button>

												</div>

												<div class="note-btn-group btn-group note-insert">
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title="" aria-label="Link (CTRL+K)"
														data-original-title="Link (CTRL+K)">
														<i class="note-icon-link"></i>
													</button>
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title="" aria-label="Picture"
														data-original-title="Picture">
														<i class="note-icon-picture"></i>
													</button>
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title="" aria-label="Video"
														data-original-title="Video">
														<i class="note-icon-video"></i>
													</button>
												</div>
												<div class="note-btn-group btn-group note-view">
													<button type="button"
														class="note-btn btn btn-light btn-sm btn-fullscreen note-codeview-keep"
														tabindex="-1" title aria-label="Full Screen"
														data-original-title="Full Screen">
														<i class="note-icon-arrows-alt"></i>
													</button>
													<button type="button"
														class="note-btn btn btn-light btn-sm btn-codeview note-codeview-keep"
														tabindex="-1" title aria-label="Code View"
														data-original-title="Code View">
														<i class="note-icon-code"></i>
													</button>
													<button type="button" class="note-btn btn btn-light btn-sm"
														tabindex="-1" title aria-label="Help"
														data-original-title="Help">
														<i class="note-icon-question"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>



								<div class="form-group">
									<div class="note-editing-area">
										<div class="note-handle">
											<div class="note-control-selection">
												<div class="note-control-selection-bg"></div>
												<div class="note-control-holder note-control-nw"></div>
												<div class="note-control-holder note-control-ne"></div>
												<div class="note-control-holder note-control-sw"></div>
												<div class="note-control-sizing note-control-se"></div>
												<div class="note-control-selection-info"></div>
											</div>
										</div>

									</div>
								</div>

								<textarea id="g_content" name="g_content" class="note-codable"
									aria-multiline="true" placeholder="공지사항을 입력하세요.">${notice.g_content }</textarea>
								<div class="note-editable card-block" contenteditable="true"
									role="textbox" aria-multiline="true" spellcheck="true"
									autocorrect="true">

									<!-- <ui>
									<li><span style="font-family:"CourierNew";">&#xFEFF;</span>
										<span style="font-family:"ArialBlack";">&#xFEFF;</span>
										"Place" <em>some</em> <u>text</u> <strong>here</strong></li>
									</ui> -->

								</div>
							</div>
						</form>
						<!-- output -->

					</div>
				</div>

				<div class="card-footer">
					<div class="float-right">
						<button type="button" class="btn btn-outline-info " id="modifyBtn"
							onclick="modify_submit();">수 정</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-outline-danger "
							id="cancelBtn" onclick="window.history.back();">취 소</button>
					</div>
				</div>
			</section>
		</div>



	</div>

</div>



<%@ include file="/WEB-INF/views/module/common_js.jsp"%>


<script>
	function modify_submit() {
		//alert("submit btn");
		let form = $('form[name="modifyForm"]');

		//유효성 체크
		if ($("input[name='title']").val() == "") {
			alert(input.name + "은 필수입니다.");
			$("input[name='title']").focus();
			return;
		}
		if ($("input[name='content']").val() == "") {
			alert(input.name + "은 필수입니다.");
			$("input[name='content']").focus();
			return;
		}
		form.submit();
	}
</script>
<%@ include file="/WEB-INF/views/module/footer.jsp"%>