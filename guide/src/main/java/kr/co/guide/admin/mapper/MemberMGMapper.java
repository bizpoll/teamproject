package kr.co.guide.admin.mapper;

import java.util.List;

import kr.co.guide.admin.domain.Criteria;
import kr.co.guide.admin.domain.MemberAuthDTO;
import kr.co.guide.admin.domain.MemberDTO;

public interface MemberMGMapper {

	/* ● 회원 목록 페이지 */
	//회원 리스트 전체 (탈퇴 x)
	public List<MemberDTO> getListWithdrawN() throws Exception;

	//회원 탈퇴
	public int updateWithdrawY(String member_id) throws Exception;
	
	
	/* ● 회원정보 상세 페이지 */
	public MemberDTO read(String member_id) throws Exception;
	//닉네임 중복 확인
	public int confirmNick(String member_nickname) throws Exception;
	
	/* ● 탈퇴한 회원 관리 페이지 */
	public List<MemberDTO> getListWithdrawY() throws Exception;
	
	public int updateWithdrawN(String member_id) throws Exception;
	public int delete(String member_id) throws Exception;
	
	
	
	/* ● 회원 권한 페이지 */
	public int insertAuth(String member_id) throws Exception;
	public int deleteAuth(String member_id) throws Exception;
	
	
}
