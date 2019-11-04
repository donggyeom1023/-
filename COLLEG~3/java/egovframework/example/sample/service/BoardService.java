package egovframework.example.sample.service;

import java.util.List;
public interface BoardService {
	
	void insertBoard(BoardVO vo) throws Exception;
	
	BoardVO selectBoard(BoardVO vo) throws Exception;
	
	List<?> selectBoardList(SampleDefaultVO searchVO) throws Exception;
	
	List<?> MainPage(SampleDefaultVO searchVO) throws Exception;

	int selectBoardListTotCnt(SampleDefaultVO searchVO);
	
}
