package kr.co.guide.admin.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guide.admin.domain.MemberDTO;
import kr.co.guide.admin.mapper.MemberMGMapper;
import kr.co.guide.admin.service.IMemberMGService;

@Service
public class MemberMGService implements IMemberMGService{
	
	@Autowired
	private MemberMGMapper mapper;
	
	private static final Logger log = LoggerFactory.getLogger(MemberMGService.class);

	@Override
	public MemberDTO read(String member_id) throws Exception {
		log.info("MemberMGService......read..................");
		return mapper.read(member_id);
	}

	@Override
	public List<MemberDTO> list() throws Exception {
		log.info("MemberMGService......list paging x ..................");
		return mapper.getListWithdrawN();
	}

	@Override
	public int modifyWithdraw(String member_id) throws Exception {
		log.info("MemberMGService......탈퇴 ..................");
		return mapper.updateWithdrawY(member_id);
	}

	@Override
	public List<MemberDTO> listWithdraw() throws Exception {
		log.info("MemberMGService...... 탈퇴회원목록 ..................");
		return mapper.getListWithdrawY();
	}

	@Override
	public int modifyWithdrawCancle(String member_id) throws Exception {
		log.info("MemberMGService......탈퇴 취소 ..................");
		return mapper.updateWithdrawN(member_id);
	}

	@Override
	public int remove(String member_id) throws Exception {
		log.info("MemberMGService...... remove ..................");
		return mapper.delete(member_id);
	}

	@Override
	public int confirmNick(String member_nickname) throws Exception {
		return mapper.confirmNick(member_nickname);
	}
	

}
