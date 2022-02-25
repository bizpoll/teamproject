package kr.co.guide.member.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.guide.member.domain.MemberDTO;
import kr.co.guide.member.service.IEmailService;
import kr.co.guide.member.service.IMemberService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {

	@Autowired
	private IMemberService memberService;
	
	@Autowired
	private IEmailService emailService;
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String joinGet() {
		log.info("==================== controller join Get ====================");
		
		return "/member/join";
		
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String joinPost(MemberDTO mDto,  RedirectAttributes rttr) {
		log.info("==================== controller join Post ====================");
		
		boolean result = memberService.insertMemberInfo(mDto);
		
		rttr.addFlashAttribute("message", mDto.getMember_name() + "님 회원가입을 축하합니다.");
		
		return "redirect:/login";
		
	}
	
	@RequestMapping(value="/find", method = RequestMethod.GET)
	public String findGet() {
		
		log.info("==================== controller find Get ====================");
		
		return "/member/find";
	}
	
	@RequestMapping(value="/find", method = RequestMethod.POST)
	public String findPost(MemberDTO mDto, RedirectAttributes rttr) {
		
		log.info("==================== controlle find Post ====================");
		
		boolean result = emailService.sendPasswordMail(mDto);
		
		//해당하는 계정이 없는경우
		if(!result) {
			rttr.addFlashAttribute("message", "일치하는 정보가 없습니다.");
			return "redirect:/member/find";
		}
		
		rttr.addFlashAttribute("message", "해당 메일로 임시 비밀번호가 전송되었습니다.");
		return "redirect:/login";
	}
	
	@RequestMapping(value="/info", method = RequestMethod.GET)
	public String infoGet() {
		
		log.info("==================== controller info Get ====================");
		
		return "/member/info";
	}
	
	
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String modifyGet(Principal principal, Model model) {
		
		log.info("==================== controller modify Get ====================");
		
		MemberDTO mDto = null;
		
		if(principal != null) {
			mDto = memberService.selectMemberInfo(principal.getName());
		}
		
		model.addAttribute("memberInfo", mDto);
		
		return "/member/modify";
	}
	
	
	@RequestMapping(value="/modifyPassword", method = RequestMethod.GET)
	public String modifyPasswordGet(Principal principal, Model model) {
		
		log.info("==================== controller modifyPassword Get ====================");
		
		MemberDTO mDto = null;
		
		if(principal != null) {
			mDto = memberService.selectMemberInfo(principal.getName());
		}
		
		model.addAttribute("memberInfo", mDto);
		
		return "/member/modifyPassword";
	}
}
