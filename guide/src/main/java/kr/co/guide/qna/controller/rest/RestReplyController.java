package kr.co.guide.qna.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.guide.qna.domain.ReplyDTO;
import kr.co.guide.qna.service.IReplyService;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/reply")
public class RestReplyController {
	
	@Autowired
	IReplyService replyService;
	
	@PostMapping("/add")
	public String replyAddPost(@RequestBody ReplyDTO rDto) {
		
		log.info("==================== restController replyAdd Post ====================");
		
		System.out.println(rDto);
		
		return "댓글이 등록되었습니다.";
	}
	
}
