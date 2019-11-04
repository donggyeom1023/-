package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.PlanListVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("planlistDAO")
public class PlanListDAO extends EgovAbstractDAO {
	
	public List<?> selectPlanList(SampleDefaultVO searchVO) throws Exception {
		return list("planlistDAO.selectPlanList", searchVO);
	}

	public int selectPlanListTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("planlistDAO.selectPlanListTotCnt", searchVO);
	}
	public void insertPlanList(PlanListVO vo) throws Exception {
		insert("planlistDAO.insertPlanList", vo);
	}
	public void updatePlanList(PlanListVO vo) throws Exception {
		update("planlistDAO.updatePlanList", vo);
	}
	public PlanListVO selectPlan(PlanListVO vo) throws Exception {
		return (PlanListVO) select("planlistDAO.selectPlan", vo);
	}
	public void deletePlanList(PlanListVO vo) throws Exception {
		delete("planlistDAO.deletePlanList", vo);
	}
}
