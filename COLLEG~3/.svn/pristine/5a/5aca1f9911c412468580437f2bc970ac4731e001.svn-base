package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.PlanListService;
import egovframework.example.sample.service.PlanListVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("planlistService")
public class PlanListServiceImpl extends EgovAbstractServiceImpl implements PlanListService{
	private static final Logger LOGGER = LoggerFactory.getLogger(PlanListServiceImpl.class);

	@Resource(name = "planlistDAO")
	private PlanListDAO planlistDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public List<?> selectPlanList(SampleDefaultVO searchVO) throws Exception {
		return planlistDAO.selectPlanList(searchVO);
	}

	@Override
	public int selectPlanListTotCnt(SampleDefaultVO searchVO) {
		return planlistDAO.selectPlanListTotCnt(searchVO);
	}
	@Override
	public void insertPlanList(PlanListVO vo) throws Exception {

		planlistDAO.insertPlanList(vo);
	}
	@Override
	public void updatePlanList(PlanListVO vo) throws Exception {
		planlistDAO.updatePlanList(vo);
	}
	@Override
	public PlanListVO selectPlan(PlanListVO vo) throws Exception {
		PlanListVO resultVO = planlistDAO.selectPlan(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}
	@Override
	public void deletePlanList(PlanListVO vo) throws Exception {
		planlistDAO.deletePlanList(vo);
	}
}
