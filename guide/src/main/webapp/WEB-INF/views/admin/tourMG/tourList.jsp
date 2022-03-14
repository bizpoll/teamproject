<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/adminHeader.jsp"%>

<!-- Begin table header -->
<head>
    <!-- Custom styles for this page -->
    <link href="${contextPath }/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<!-- End table header -->


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">TBL_tour</h1>
                    <p class="mb-4">여행지 목록.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">여행지 정보</h6>
                        </div>
                        <div class="card-body">
                        
                        <div id="dataTable_filter" class="dataTables_filter">
	<label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label>
</div>
                        
                        
                            <div class="table-responsive">
                                <table class="table table-bordered" id="#" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>고유번호</th>
                                            <th>제목</th>
                                            <th>주소</th>
                                            <th>구분</th>
                                            <th>지역</th>
                                            <th>지역 상세</th>
                                            <th>설정</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>고유번호</th>
                                            <th>제목</th>
                                            <th>주소</th>
                                            <th>구분</th>
                                            <th>지역</th>
                                            <th>지역 상세</th>
                                            <th>설정</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
										<c:forEach items="${tourMGList }" var="tDto">
	                                	<tr>
	                                        <td>${tDto.tour_no}</td>
	                                        <td>${tDto.tour_title }</td>
	                                        <td>${tDto.tour_address}</td>
	                                        <c:choose>
		                                        <c:when test="${tDto.tour_type == 0}">
		                                        	<td>관광지</td>
		                                        </c:when>
		                                        <c:when test="${tDto.tour_type == 1}">
		                                        	<td>음식점</td>
		                                        </c:when>
		                                        <c:when test="${tDto.tour_type == 2}">
		                                        	<td>숙박</td>
		                                        </c:when>
		                                        <c:otherwise>
		                                        	<td>기타</td>
		                                        </c:otherwise>
	                                        </c:choose>
	                                        <td>${tDto.area_name}</td>
	                                        <td>${tDto.area_detail_name}</td>
	                                        <td>
	                                        	<a class="detail btn btn-primary btn-sm" href="${tDto.tour_no}">상세</a>
	                                        	<a class="remove btn btn-danger btn-sm" href="#">삭제</a>
	                                        </td>
	                                    </tr>
	                                	</c:forEach>

                                    </tbody>
                                </table>
                                
                                
                                <div class="pull-right" style="float: right;">
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                            	<ul class="pagination">
                            		<c:if test="${pageMaker.prev }">
                            			<li class="paginate_button page-item previous" id="dataTable_previous">
                            				<a href="${pageMaker.startPage - 1 }" aria-controls="dataTable" data-dt-idx="${pageMaker.startPage - 1 }" tabindex="0" class="page-link">Previous</a>
                            			</li>
                            		</c:if>
                            		
                            		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                            			<li class="paginate_button page-item ${pageMaker.cri.pageNum == num ? 'active' : '' }">
                            				<a href="${num }" aria-controls="dataTable" data-dt-idx="${num }" tabindex="0" class="page-link">${num }</a>
                            			</li>
                            		</c:forEach>
                            		
                            		<c:if test="${pageMaker.next }">
                            			<li class="paginate_button page-item next" id="dataTable_next">
                            				<a href="${pageMaker.endPage + 1 }" aria-controls="dataTable" data-dt-idx="${pageMaker.endPage + 1 }" tabindex="0" class="page-link">Next</a>
                            			</li>
                            		</c:if>
                            	</ul>
                            </div>
                            </div>
                            
                            
                            <form id="actionForm" action="${contextPath}/admin/tourMG/tourList" method="get">
                            	<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
                            	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                            	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                            	<input type="hidden" name="type" value="${pageMaker.cri.type }">
                            	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                            </form>
                            
                                
                                
                                
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->



<script type="text/javascript">
	var actionForm = $("#actionForm");
	$(".detail").on("click", function(e) {
		e.preventDefault();
		var pk = $(this).attr("href");
		
		actionForm.append("<input type='hidden' name='tour_no' value='" + pk + "'>");
		actionForm.attr("action", "${contextPath}/admin/tourMG/tourDetail");
		actionForm.submit();
	
	});
	
/* 	$(".remove").on("click", function(e) {
		e.preventDefault();
		var pk = $(this).attr("href");
		
		actionForm.append("<input type='hidden' name='tour_no' value='" + pk + "'>");
		actionForm.attr("action", "${contextPath}/admin/tourMG/tourListDel");
		actionForm.submit();
		alert("삭제되었습니다. : " + pk );
	
	}); */
	
	$(".paginate_button a").on("click", function(e) {
		e.preventDefault();
		
		console.log("click");
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
</script>
            


<%@ include file="../includes/adminFooter.jsp"%> 
