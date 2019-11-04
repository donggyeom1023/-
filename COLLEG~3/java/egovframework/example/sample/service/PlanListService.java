package egovframework.example.sample.service;

import java.util.List;

public interface PlanListService {
	
	List<?> selectPlanList(SampleDefaultVO searchVO) throws Exception;

	int selectPlanListTotCnt(SampleDefaultVO searchVO);
	
	void insertPlanList(PlanListVO vo) throws Exception;
	
	void updatePlanList(PlanListVO vo) throws Exception;
	
	PlanListVO selectPlan(PlanListVO vo) throws Exception;
	
	void deletePlanList(PlanListVO vo) throws Exception;
}
