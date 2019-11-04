package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.MainNewsVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("mainnewsDAO")
public class MainNewsDAO extends EgovAbstractDAO {
	public List<?> selectMainNewsList(SampleDefaultVO searchVO) throws Exception {
		return list("mainnewsDAO.selectMainNewsList", searchVO);
	}

	public int selectMainNewsListTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("mainnewsDAO.selectMainNewsListTotCnt", searchVO);
	}
	
	public void updateMainNews(MainNewsVO vo) throws Exception {
		update("mainnewsDAO.updateMainNews", vo);
	}
	
	public MainNewsVO selectMainNews(MainNewsVO vo) throws Exception {
		return (MainNewsVO) select("mainnewsDAO.selectMainNews", vo);
	}
}