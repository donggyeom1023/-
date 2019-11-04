package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ClassSelectService;
import egovframework.example.sample.service.ClassSelectVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
@Service("classselectService")
public class ClassSelectImpl extends EgovAbstractServiceImpl implements ClassSelectService{
	
	@Resource(name = "classselectDAO")
	private ClassSelectDAO classselectDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public List<?> selectClassList(SampleDefaultVO searchVO) throws Exception {
		return classselectDAO.selectClassList(searchVO);
	}
	
	@Override
	public List<?> classdetailList(SampleDefaultVO searchVO) throws Exception {
		return classselectDAO.classdetailList(searchVO);
	}
	
	@Override
	public ClassSelectVO selectClassView(ClassSelectVO vo) throws Exception {
		ClassSelectVO resultVO = classselectDAO.selectClassView(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}
}
