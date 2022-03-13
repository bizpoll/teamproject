package kr.co.guide.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.guide.admin.service.IMemberMGService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/memberMG")
public class MemberMGController {
	
	@Autowired
	private IMemberMGService service;

	/* ● 회원 목록 페이지 */
	//회원목록
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String member(Model model) throws Exception {
		log.info("memberList..............");	
		
		model.addAttribute("memberMGList", service.list());
		
		return "admin/memberMG/memberList";
	}
	
	//회원탈퇴
	@RequestMapping(value = "/memberWD", method = RequestMethod.POST)		
	public String memberWD(@RequestParam("member_id") String member_id) throws Exception {
		log.info("memberWD............................ : " + member_id);
		service.modifyWithdraw(member_id);
		return "redirect:/admin/memberMG/memberList";
	}
	
	/* ● 회원정보 상세 페이지 */
	@RequestMapping(value = "/memberDetail")
	public String memberDetail(@RequestParam("member_id") String member_id, Model model) throws Exception {
		log.info("memberDetail.............." + service.read(member_id));	
		
		model.addAttribute("memberDetail", service.read(member_id));
		
		return "admin/memberMG/memberDetail";
	}
	
	/* ● 회원정보 수정 페이지 */
	@RequestMapping(value = "/memberModify")
	public String memberModify(@RequestParam("member_id") String member_id, Model model) throws Exception {
		log.info("memberModify.............." + service.read(member_id));	
		
		model.addAttribute("memberModify", service.read(member_id));
		
		return "admin/memberMG/memberModify";
	}
	
	//중복 체크 기능 confirmNick
	@RequestMapping(value = "/confirmNick", method = RequestMethod.POST)	
	public int confirmNick(@RequestBody String member_nickname) throws Exception {
		
		log.info("confirmNick..............");	
		
		return service.confirmNick(member_nickname);
	}

	
	/* ● 탈퇴한 회원 관리 페이지 */
	//탈퇴 회원목록
	@RequestMapping(value = "/memberWDList", method = RequestMethod.GET)
	public String memberWD(Model model) throws Exception {
		log.info("memberWDList..............");	
		
		model.addAttribute("memberMGList", service.listWithdraw());
		
		return "admin/memberMG/memberWDList";
	}
	
	//회원 탈퇴 취소
	@RequestMapping(value = "/memberWDCancle", method = RequestMethod.POST)		
	public String memberWDCancle(@RequestParam("member_id") String member_id) throws Exception {
		log.info("memberWDCancle............................ : " + member_id);
		service.modifyWithdrawCancle(member_id);
		return "redirect:/admin/memberMG/memberWDList";
	}
	
	//회원 삭제
	@RequestMapping(value = "/memberRemove", method = RequestMethod.POST)
	public String memberRemove(@RequestParam("member_id") String member_id) throws Exception {
		log.info("memberRemove............................ : " + member_id);
		service.remove(member_id);
		return "redirect:/admin/memberMG/memberWDList";
	}
	
	
}
