package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.MainNewsService;
import egovframework.example.sample.service.MainNewsVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("mainnewsService")
public class MainNewsServiceImpl extends EgovAbstractServiceImpl implements MainNewsService{
	private static final Logger LOGGER = LoggerFactory.getLogger(MainNewsServiceImpl.class);
	
	@Resource(name = "mainnewsDAO")
	private MainNewsDAO mainnewsDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	@Override
	public List<?> selectMainNewsList(SampleDefaultVO searchVO) throws Exception {
		return mainnewsDAO.selectMainNewsList(searchVO);
	}

	@Override
	public int selectMainNewsListTotCnt(SampleDefaultVO searchVO) {
		return mainnewsDAO.selectMainNewsListTotCnt(searchVO);
	}
	@Override
	public void updateMainNews(MainNewsVO vo) throws Exception {
		mainnewsDAO.updateMainNews(vo);
	}
	
	@Override
	public MainNewsVO selectMainNews(MainNewsVO vo) throws Exception {
		MainNewsVO resultVO = mainnewsDAO.selectMainNews(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}
}
