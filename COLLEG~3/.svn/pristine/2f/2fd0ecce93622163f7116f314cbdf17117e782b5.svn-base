package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.FreeboardService;
import egovframework.example.sample.service.FreeboardVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("freeboardService")
public class FreeboardServiceImpl extends EgovAbstractServiceImpl implements FreeboardService{
	private static final Logger LOGGER = LoggerFactory.getLogger(FreeboardServiceImpl.class);
	
	@Resource(name = "freeboardDAO")
	private FreeboardDAO freeboardDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public void insertFreeBoard(FreeboardVO vo) throws Exception {

		freeboardDAO.insertFreeBoard(vo);
	}
	
	@Override
	public List<?> selectFreeboardList(SampleDefaultVO searchVO) throws Exception {
		return freeboardDAO.selectFreeboardList(searchVO);
	}
	
	@Override
	public List<?> MainPage(SampleDefaultVO searchVO) throws Exception {
		return freeboardDAO.MainPage(searchVO);
	}

	@Override
	public int selectFreeboardListTotCnt(SampleDefaultVO searchVO) {
		return freeboardDAO.selectFreeboardListTotCnt(searchVO);
	}
	
	@Override
	public void updateFreeboard(FreeboardVO vo) throws Exception {
		freeboardDAO.updateFreeboard(vo);
	}
	
	@Override
	public FreeboardVO selectFreeboard(FreeboardVO vo) throws Exception {
		FreeboardVO resultVO = freeboardDAO.selectFreeboard(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}
}
