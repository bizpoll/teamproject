package kr.co.guide.travel.service;

import java.util.List;
import kr.co.guide.travel.domain.AreaDTO;
import kr.co.guide.travel.domain.TourDTO;

public interface AreaService {
	
	public List<TourDTO> tourList() throws Exception;
	public List<AreaDTO> areaList() throws Exception;
}
