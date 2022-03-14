package kr.co.guide.travel.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guide.travel.domain.ScheduleDTO;
import kr.co.guide.travel.domain.ScheduleDetailDTO;
import kr.co.guide.travel.domain.TourDTO;
import kr.co.guide.travel.mapper.AreaMapper;
import kr.co.guide.travel.mapper.ScheduleMapper;
import kr.co.guide.travel.service.AreaService;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AreaServiceImpl implements AreaService{

	@Autowired
	private AreaMapper mapper;
	
	@Autowired
	private ScheduleMapper smapper;
	
	@Override
	public List<TourDTO> tourList() throws Exception {
		return mapper.TourRead();
	}

	@Override
	public void scheduleinsert(ScheduleDTO sDto, ScheduleDetailDTO sdDto) throws Exception {
		smapper.screate(sDto);
		smapper.sdcreate(sdDto);
		log.info("Schedule ServiceImpl..................");
	}
}
