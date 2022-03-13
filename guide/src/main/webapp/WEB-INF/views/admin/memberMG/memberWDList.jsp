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
                    <h1 class="h3 mb-2 text-gray-800">TBL_MEMBER</h1>
                    <p class="mb-4">탈퇴 회원</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">탈퇴 회원 정보</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>이메일</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>가입일</th>
                                            <th>잠금</th>
                                            <th>설정</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>이메일</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>가입일</th>
                                            <th>잠금</th>
                                            <th>설정</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
										<c:forEach items="${memberMGList }" var="memDto">
	                                	<tr>
	                                        <td>${memDto.member_id}</td>
	                                        <td>${memDto.member_name }</td>
	                                        <td>${memDto.member_nickname}</td>
	                                        <td>${memDto.member_regist_date}</td>
	                                        <td>${memDto.member_lock}</td>
	                                        <td>
	                                        	<a class="cancle btn btn-primary btn-sm" href="${memDto.member_id}">탈퇴 취소</a>
	                                        	<a class="remove btn btn-danger btn-sm" href="${memDto.member_id}">삭제</a>
	                                        </td>
	                                    </tr>
	                                	</c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<form id="actionForm" action="${contextPath}/admin/memberMG/memberList" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

<script type="text/javascript">
	var actionForm = $("#actionForm");
	
	//탈퇴취소
	$(".cancle").on("click", function(e) {
		e.preventDefault();
		var pk = $(this).attr("href");
		
		actionForm.append("<input type='hidden' name='member_id' value='" + pk + "'>");
		actionForm.attr("action", "${contextPath}/admin/memberMG/memberWDCancle");
		actionForm.submit();
		alert("탈퇴가 취소되었습니다. : " + pk);
	
	});
	
	//회원 삭제
	$(".remove").on("click", function(e) {
		e.preventDefault();
		var pk = $(this).attr("href");
		
		actionForm.append("<input type='hidden' name='member_id' value='" + pk + "'>");
		actionForm.attr("action", "${contextPath}/admin/memberMG/memberRemove");
		actionForm.submit();
		alert("회원 정보가 삭제되었습니다. : " + pk);
	
	});
	
</script>


<%@ include file="../includes/adminFooter.jsp"%> 
