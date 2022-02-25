package kr.co.guide.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserLoginFailHandler implements AuthenticationFailureHandler {
		
	
	// 로그인 실패시 작동
		@Override
		public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
				AuthenticationException exception) throws IOException, ServletException {
			
			log.info("==================== CustomUserLoginFailHandler ====================");
			String error = null;
			if (exception instanceof AuthenticationServiceException) {
				//request.setAttribute("loginFailMsg", "존재하지 않는 사용자입니다.");
				error = "1";
			} else if (exception instanceof BadCredentialsException) {
				//request.setAttribute("loginFailMsg", "비밀번호가 틀립니다.");
				error = "2";
			} else if(exception instanceof LockedException) {
				//request.setAttribute("loginFailMsg", "잠긴 계정입니다..");
				error = "3";
			 
			} else if(exception instanceof DisabledException) {
				//request.setAttribute("loginFailMsg", "비활성화된 계정입니다..");
				error = "4";
			
			} 
			 
			
			// post방식 아직 해결 못함
			/*
			 * Object principal =
			 * SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			 * System.out.println("이건무엇"); System.out.println(principal); // 로그인 페이지로 다시 포워딩
			 */
			
			/*
			 * RequestDispatcher dispatcher =
			 * request.getRequestDispatcher("/marking.co.kr/login");
			 * dispatcher.forward(request, response);
			 */
			
			//get 방식
			String page = "/gogo.co.kr/login?error=" + error;
			response.sendRedirect(page);
				 

		}
		
		


}
