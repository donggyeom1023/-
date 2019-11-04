package egovframework.example.sample.service;

import java.util.List;


public interface ClassSelectService {
	
	List<?> selectClassList(SampleDefaultVO searchVO) throws Exception;
	
	List<?> classdetailList(SampleDefaultVO searchVO) throws Exception;
	
	ClassSelectVO selectClassView(ClassSelectVO vo) throws Exception;
}
