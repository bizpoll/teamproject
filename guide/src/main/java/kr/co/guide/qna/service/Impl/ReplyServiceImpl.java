package kr.co.guide.qna.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guide.qna.domain.QnaDTO;
import kr.co.guide.qna.domain.ReplyDTO;
import kr.co.guide.qna.mapper.ReplyMapper;
import kr.co.guide.qna.service.IReplyService;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements IReplyService{
	
	@Autowired
	ReplyMapper replyMapper;
	
	
	
	//댓글 등록 기능
	@Override
	public boolean insertReplyBoard(ReplyDTO rDto) {

		log.info("==================== service insertReplyBoard ====================");
		
		return replyMapper.insertReplyBoard(rDto) == 1 ? true : false;
	}
	
	//해당 게시글의 모든 댓글 출력
	@Override
	public List<ReplyDTO> selectReplyList(String qna_no) {

		log.info("==================== service selectReplyList ====================");
		
		return replyMapper.selectReplyList(qna_no);
	}
	
	//해당 상세 댓글 출력
	@Override
	public QnaDTO selectReplyInfo(String qna_reply_no) {

		log.info("==================== service selectReplyInfo ====================");
		
		return replyMapper.selectReplyInfo(qna_reply_no);
	}
	
	//댓글 수정
	@Override
	public boolean updateReplyBoard(ReplyDTO rDto) {

		log.info("==================== service updateReplyBoard ====================");
		
		return replyMapper.updateReplyBoard(rDto) == 1 ? true : false;
	}
	
	//댓글 삭제
	@Override
	public boolean delectReplyBoard(String qna_reply_no) {

		log.info("==================== service delectReplyBoard ====================");
		
		return replyMapper.delectReplyBoard(qna_reply_no) == 1 ? true : false;
	}

}
