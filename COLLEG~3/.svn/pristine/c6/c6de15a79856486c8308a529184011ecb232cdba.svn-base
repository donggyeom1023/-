package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.PlanListVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("boardService")
public class BoardListServiceImpl extends EgovAbstractServiceImpl implements BoardService{
	private static final Logger LOGGER = LoggerFactory.getLogger(BoardListServiceImpl.class);
	
	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public void insertBoard(BoardVO vo) throws Exception {

		boardDAO.insertBoard(vo);
	}
	
	@Override
	public List<?> selectBoardList(SampleDefaultVO searchVO) throws Exception {
		return boardDAO.selectBoardList(searchVO);
	}
	
	@Override
	public List<?> MainPage(SampleDefaultVO searchVO) throws Exception {
		return boardDAO.MainPage(searchVO);
	}

	@Override
	public int selectBoardListTotCnt(SampleDefaultVO searchVO) {
		return boardDAO.selectBoardListTotCnt(searchVO);
	}
	
	@Override
	public BoardVO selectBoard(BoardVO vo) throws Exception {
		
		BoardVO resultVO = boardDAO.selectBoard(vo);
		
		return resultVO;
	}
}
