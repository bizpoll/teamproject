package kr.co.guide.travel.persistence;

import java.util.List;
import kr.co.guide.travel.domain.AreaDTO;
import kr.co.guide.travel.domain.TourDTO;

public interface AreaDAO {

	public List<TourDTO> tourList() throws Exception;
}
