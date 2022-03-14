package kr.co.guide.admin.mapper;

import java.util.List;

import kr.co.guide.admin.domain.Criteria;
import kr.co.guide.admin.domain.TourDTO;

public interface TourMGMapper {
	
//	public int insert(TourDTO tDto) throws Exception;
//	public TourDTO read(String tour_no) throws Exception;
//	public int update(TourDTO tDto) throws Exception;
	
	/* ● 여행지 목록 페이지 */
	public TourDTO read(String tour_no) throws Exception;
	
	public List<TourDTO> getListWithPaging(Criteria cri) throws Exception;
	public int getTotalCnt(Criteria cri) throws Exception;
	
	//삭제
	public int delete(String tour_no) throws Exception;
}
