<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	
<%@ include file="../common/cssLink.jsp"%>
<body>
<%@ include file="../common/mainheader.jsp"%>
	

<%-- 바디 시작 --%>

<div class="container">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-7 mx-auto">
				<div class="card border-0 shadow rounded-3 my-5">
					<div class="card-body p-4 p-sm-5">
						<h2 class="card-title text-center mb-5 fw-bold fs-2">
							${memberInfo.member_nickname}
							<br>
							<span class="fs-5">님의 프로필</span>
						</h2>
						
						<form action="" method="post" name="frm" id="frm" >
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
							
							<div class="form-floating mb-2">
								<input type="text" class="form-control pe-none bg-white" id="member_id" name="member_id" value="${memberInfo.member_id}" placeholder="text" maxlength="50" readonly="readonly"> 
								<label for="member_id">아이디</label>
								<span class="fs-6 text-danger" id="span-member-id">　</span>
							</div>
							<div class="form-floating mb-2">
								<input type="text" class="form-control pe-none bg-white"  id="member_name" name="member_name" value="${memberInfo.member_name}" placeholder="text" maxlength="5" readonly="readonly"> 
								<label for="member_name">이름</label>
								<span class="fs-6 text-danger" id="span-member-name">　</span>
							</div>
							<div class="form-floating mb-2">
								<input type="text" class="form-control " id="member_name" name="member_name" value="${memberInfo.member_nickname}" placeholder="text" maxlength="5"> 
								<label for="member_name">닉네임</label>
								<span class="fs-6 text-danger" id="span-member-name">　</span>
							</div>
							
							<div class="hstack gap-3 mb-3">
								<button class="btn btn-dark btn-login text-uppercase fw-bold main-hover w-100" id="btn-modify" type="submit">
									정보수정
								</button>
							</div>
							<div class="hstack gap-3">
								<a href="${contextPath}/member/modifyPassword" class="w-50">
									<input type="button" value="비밀번호 변경" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100">
								</a>
								<button class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-50" id="btn-delete" type="submit">
									회원탈퇴
								</button>
								<a href="javascript:window.history.back();" class="w-50">
									<input type="button" value="뒤로가기" class="btn btn-dark btn-login text-uppercase fw-bold sub-hover w-100">
								</a>
							</div>
						</form>
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
