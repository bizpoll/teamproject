package kr.co.guide.travel.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guide.travel.domain.TourDTO;
import kr.co.guide.travel.mapper.AreaMapper;
import kr.co.guide.travel.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService{

   @Autowired
   private AreaMapper mapper;
   
   @Override
   public List<TourDTO> tourList() throws Exception {
      return mapper.TourRead();
   }
}