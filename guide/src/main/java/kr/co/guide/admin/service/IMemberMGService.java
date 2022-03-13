package kr.co.guide.admin.service;

import java.util.List;

import kr.co.guide.admin.domain.MemberDTO;

public interface IMemberMGService {
	
	public MemberDTO read(String member_id) throws Exception;
	
	//리스트 전체 (탈퇴 x)
	public List<MemberDTO> list() throws Exception;
	
	//회원 탈퇴
	public int modifyWithdraw(String member_id) throws Exception;
	
	public int confirmNick(String member_nickname) throws Exception;
	
	/* ● 탈퇴한 회원 관리 페이지 */
	public List<MemberDTO> listWithdraw() throws Exception;
	
	public int modifyWithdrawCancle(String member_id) throws Exception;
	public int remove(String member_id) throws Exception;
	

}
