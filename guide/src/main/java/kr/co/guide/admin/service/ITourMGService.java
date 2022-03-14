package kr.co.guide.admin.service;

import java.util.List;

import kr.co.guide.admin.domain.Criteria;
import kr.co.guide.admin.domain.TourDTO;

public interface ITourMGService {
	
	public TourDTO read(String tour_no) throws Exception;
	
	public List<TourDTO> listAllPaging(Criteria cri) throws Exception;
	public int getTotalCnt(Criteria cri) throws Exception;
	
	public boolean remove(String tour_no) throws Exception;
	

}
