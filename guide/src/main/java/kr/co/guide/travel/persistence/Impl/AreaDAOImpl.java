package kr.co.guide.travel.persistence.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.guide.travel.domain.AreaDTO;
import kr.co.guide.travel.domain.TourDTO;
import kr.co.guide.travel.persistence.AreaDAO;

@Repository
public class AreaDAOImpl implements AreaDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TourDTO> tourList() throws Exception {
		return sqlSession.selectList("AreaMapper.TourRead");
	}

}
