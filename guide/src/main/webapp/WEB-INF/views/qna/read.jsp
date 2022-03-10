<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	
<%@ include file="../common/cssLink.jsp"%>
<body>
<%@ include file="../common/mainheader.jsp"%>
	

<%-- 바디 시작 --%>


		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-11 col-md-11 col-lg-11 mx-auto">
					<div class="card border-0 shadow rounded-3 my-5">
						<div class="card-body px-5 py-3 p-sm-5">
							<h2 class="card-title text-center mb-5 fw-bold fs-2">문의글</h2>
							
								<form action="${contextPath}/qna/delete" method="post" name="" id="">
									<input type="hidden"  class="form-control" id="" name="qna_no" value="${qnaInfo.qna_no}">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<input type="hidden" name="pageNum" value="${criteria.pageNum}" />
								    <div class="form-group row mb-3">
								      <label for="board_title" class="col-sm-2 col-form-label fw-bolder">글 제목</label>
								      <div class="col-sm-10">
								        <input type="text"  class="form-control bg-white pe-none" id="" name="" value="${qnaInfo.qna_title ne '1' ? qnaInfo.qna_title ne '2' ? '기타 문의' : '일정 문의' : '계정 문의'} " readonly="readonly" maxlength="30">
								      </div>
								    </div>
								    <div class="form-group row mb-3">
								      <label for="member_name" class="col-sm-2 col-form-label fw-bolder">작성자</label>
								      <div class="col-sm-10">
								        <input type="text"  class="form-control bg-white pe-none" id="" name="" value="${empty qnaInfo.qna_write_name ? '비회원' : qnaInfo.qna_write_name}" readonly="readonly">
								      </div>
								    </div>
								    <div class="form-group row mb-3">
								      <label for="board_contents" class="col-sm-2 col-form-label align-middle fw-bolder" >글 내용</label>
								      <div class="col-sm-10">
								        <textarea class="form-control bg-white" id=""  name="qna_content" rows="10" readonly="readonly" style="resize: none;" maxlength="1300">${qnaInfo.qna_content}</textarea>
								      </div>
								    </div>
								    
								    
								    <div class="hstack gap-3 w-75 ms-auto">
								     <sec:authorize access="isAuthenticated()">
									  	 
									  	 <c:choose>
									  	 
									  	 	<c:when test="${principal.username eq qnaInfo.qna_write}">
								  	 			<a href="${contextPath}/qna/modify?pageNum=${criteria.pageNum}&qna_no=${qnaInfo.qna_no}" class="w-50">
													<input type="button" value="글 수정" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100">
												</a>
													<input type="submit" value="글 삭제" class="btn btn-dark btn-login text-uppercase fw-bold main-hover w-50">
												<a href="${contextPath}/qna/list?pageNum=${criteria.pageNum}" class="w-50">
													<input type="button" value="목록보기" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100 " style="float: right;">
												</a>
									  	 	
									  	 	</c:when>
									  	 	
									  	 	<c:otherwise>
									  	 	
								  	 			<a href="${contextPath}/qna/list?pageNum=${criteria.pageNum}&pageNum=${criteria.pageNum}" class="w-50">
													<input type="button" value="목록보기" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100 " style="margin-left: 100%;">
												</a>
									  	 	
									  	 	</c:otherwise>
									  	 
									  	 </c:choose>
									  	 
									</sec:authorize>
									<sec:authorize access=" isAnonymous()">
											
											<a href="${contextPath}/qna/list?pageNum=${criteria.pageNum}&pageNum=${criteria.pageNum}" class="w-50">
													<input type="button" value="목록보기" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100 " style="margin-left: 100%;">
												</a>
									
									</sec:authorize>
									</div>
								</form>
								
								<!-- Button trigger modal -->
									<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									  Launch static backdrop modal
									</button>
									
									<!-- Modal -->
									<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									     	<form action="" method="post" name="" id="reply">
									     		<input type="text" id="qna_no" name="qna_no" value="${qnaInfo.qna_no}"><br>
												<input type="text" id="member_id" name="member_id" value="${memberInfo.member_id}" /><br>
									     		
									     		<div class="form-group row mb-3">
											      <label for="member_name" class="col-sm-2 col-form-label fw-bolder">작성자</label>
											      <div class="col-sm-10">
											        <input type="text"  class="form-control bg-white pe-none" id="" name="" value="${empty memberInfo.member_name ? '비회원' : memberInfo.member_name}" readonly="readonly">
											      </div>
											    </div>
											    <div class="form-group row mb-3">
											      <label for="board_contents" class="col-sm-2 col-form-label align-middle fw-bolder" >글 내용</label>
											      <div class="col-sm-10">
											        <textarea class="form-control" id="qna_reply_content"  name="qna_reply_content" rows="10" style="resize: none;" maxlength="1300"></textarea>
											      </div>
											    </div>
									     	</form>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-primary" id="btn-reply-add">등록하기</button>
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									      </div>
									    </div>
									  </div>
									</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	
<%-- 바디 끝 --%>

	
<%@ include file="../common/mainfooter.jsp"%>
<%@ include file="../common/jsLink.jsp"%>


<script type="text/javascript">
	$(document).ready(function(){
		
		$("#btn-reply-add").on("click", function(e){
			
			e.preventDefault();
			
			var member_id = $("#member_id").val();
			var form = {member_id : member_id};
			var csrf_headername = "${_csrf.headerName}"; 
			var csrf_token = "${_csrf.token}";
			
			$.ajax({
			    type:  "post",                                                               // 서버로 보내는 방식 결정
			    data: $("#reply").serialize(),                                                        // 서버로 보내는 데이터 변수 or json형태
			    dataType: "json",                                                          // 서버로부터 반환되는 타입 지정
			    url : "${contextPath}/reply/add",                  						 // 요청 url
			    processData : true,                                                      // 요청으로 보낸 데이터를 query string 형태로 변환할지 여부를 나타냄 기본값은 true
				contentType:  "application/text; charset-utf-8",                                                       // 서버에 보내는 데이터의 타입
			    beforeSend : function(xhr) {                                           //ajax가 실행하기 전에 실행되는 이벤트
			        xhr.setRequestHeader(csrf_headername, csrf_token);
			    },
			    success : function(result) {                                             // 성공적으로 요청이 되었을때 실행되는 함수
					alert("성공")
					alert(result);
			    }
			});
		});
		
		
		
		
		
		
		
	});
	
	

</script>

	
</body>
</html>
