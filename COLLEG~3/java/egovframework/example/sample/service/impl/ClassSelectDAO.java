package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ClassSelectVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("classselectDAO")
public class ClassSelectDAO extends EgovAbstractDAO {
	
	public ClassSelectVO selectClassView(ClassSelectVO vo) throws Exception {
		return (ClassSelectVO) select("classselectDAO.selectClassView", vo);
	}
	public List<?> selectClassList(SampleDefaultVO searchVO) throws Exception {
		return list("classselectDAO.selectClassList", searchVO);
	}
	public List<?> classdetailList(SampleDefaultVO searchVO) throws Exception {
		return list("classselectDAO.classdetailList", searchVO);
	}
	
}
