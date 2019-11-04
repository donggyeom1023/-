package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.PlanListVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO {
	
	public String insertBoard(BoardVO vo) throws Exception {
		return (String) insert("boardDAO.insertBoard", vo);
	}
	
	public BoardVO selectBoard(BoardVO vo) throws Exception {
		return (BoardVO) select("boardDAO.selectBoard", vo);
	}
	
	public List<?> selectBoardList(SampleDefaultVO searchVO) throws Exception {
		return list("boardDAO.selectBoardList", searchVO);
	}
	
	public List<?> MainPage(SampleDefaultVO searchVO) throws Exception {
		return list("boardDAO.MainPage", searchVO);
	}
	
	public int selectBoardListTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("boardDAO.selectBoardListTotCnt", searchVO);
	}
}
