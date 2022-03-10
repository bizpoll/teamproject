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
						<div class="card-body p-0 p-sm-5">
							<h2 class="card-title text-center mb-5 fw-bold fs-2">문의 게시판</h2>
								<br>
								<br>
								<table class="table text-center table-bordered table-striped table-hover table-sm fs-7" >
								  <thead>
								    <tr>
								      <th scope="col" style="width: 10%">글번호</th>
								      <th scope="col" style="width: 10%">상태</th>
								      <th scope="col" style="width: 45%">제목</th>
								      <th scope="col" style="width: 20%">작성자</th>
								      <th scope="col" style="width: 20%">등록일</th>
								    </tr>
								  </thead>
								  <tbody>
								  <c:choose>
								  	
								  	<c:when test="${empty qnaList}">
								  		
								  		<tr class="align-middle bg-white">
									      <td class="bg-white" colspan="5" style="height: 25rem;" >현재 등록된 글이 없습니다.</td>
									    </tr>
								  	
								  	</c:when>
								  	
								  	<c:otherwise>
								  	
								  		<c:forEach items="${qnaList}" var="qnaList"> 
								  			<tr>
										      <td>${qnaList.qna_no}</td>
										     
										      <td>
										      	<c:choose>
										      		<c:when test='${qnaList.qna_reply_exist eq "N"}'>
										      			<span class="badge rounded-pill bg-secondary">답변 대기중</span>
										      		</c:when>
										      		
										      		<c:otherwise>
										      			<span class="badge rounded-pill bg-secondary">답변완료</span>
										      		</c:otherwise>
										      	</c:choose>
										      </td>
										      
										      <td>
										      	<a href="${contextPath}/qna/read?pageNum=${criteria.pageNum}&qna_no=${qnaList.qna_no}"  class="text-dark text-decoration-none">
											      	${qnaList.qna_title ne "1" ? qnaList.qna_title ne "2" ? "기타 문의" : "일정 문의" : "계정 문의"} 
										      	</a>
										      	<c:if test='${qnaList.qna_secret eq "Y"}'>
											      	&nbsp;<i class="bi bi-lock-fill"></i> 
										      	</c:if>
										      </td>
										      <td>${empty qnaList.qna_write_name ? "비회원" : qnaList.qna_write_name}</td>
										      <td><fmt:formatDate value="${qnaList.qna_regist_date}" pattern="yyyy-MM-dd"/></td>
										    </tr>
								  		</c:forEach>
								  	
								  	</c:otherwise>
								  </c:choose>
								 
								  </tbody>
								</table>
								<div class="d-grid w-50 ms-auto mb-3">
					                <a href="${contextPath}/qna/add?pageNum=${criteria.pageNum}" class="btn btn-dark text-uppercase fw-bold main-hover w-25 ms-auto">
					                	글등록
					                </a>
					            </div>
					            
					            
					            <div>
	                            	<ul class="pagination justify-content-end">
	                            	<c:if test="${pageMaker.prev}">
	                            		<li class="page-item">
									      <a class="page-link btn-secondary" href="${contextPath}/qna/list?pageNum=1">
									      	<i class="bi bi-chevron-double-left"></i>
									      </a>
									    </li>
									    <li class="page-item">
									      <a class="page-link btn-secondary" href="${contextPath}/qna/list?pageNum=${pageMaker.startPage - 1}">
											<i class="bi bi-chevron-left"></i>
										  </a>
									    </li>
	                            	</c:if>	
	                            	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                            		<li class="page-item ${pageMaker.cri.pageNum == num ? 'active' : '' }">
	                            			<a class="page-link" href="${contextPath}/qna/list?pageNum=${num}">${num}</a>
	                            		</li>
	                            	</c:forEach>	
	                            	<c:if test="${pageMaker.next}">
	                            		<li class="page-item">
									      <a class="page-link" href="${contextPath}/qna/list?pageNum=${pageMaker.endPage + 1}">
											<i class="bi bi-chevron-right"></i>
										  </a>
									    </li>
									    <li class="page-item">
									      <a class="page-link" href="${contextPath}/qna/list?pageNum=${pageMaker.realEnd}">
											<i class="bi bi-chevron-double-right"></i>
										  </a>
									    </li>
	                            	</c:if>	
	                            	</ul>
                           		 </div>
					            
						</div>
					</div>
				</div>
			</div>
		</div>	

	
<%-- 바디 끝 --%>

	
<%@ include file="../common/mainfooter.jsp"%>
<%@ include file="../common/jsLink.jsp"%>
	
</body>
</html>
