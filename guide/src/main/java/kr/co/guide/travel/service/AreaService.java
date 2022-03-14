package kr.co.guide.travel.service;

import java.util.List;

import kr.co.guide.travel.domain.ScheduleDTO;
import kr.co.guide.travel.domain.ScheduleDetailDTO;
import kr.co.guide.travel.domain.TourDTO;

public interface AreaService {
	
	public List<TourDTO> tourList() throws Exception;
	
	public void scheduleinsert(ScheduleDTO sDto, ScheduleDetailDTO sdDto) throws Exception;
}
