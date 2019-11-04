package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.PlanListService;
import egovframework.example.sample.service.PlanListVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class PlanListController {
	
	@Resource(name = "planlistService")
	private PlanListService planlistService;
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@RequestMapping(value = "/planList.do")
	public String selectSampleList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {

		/** EgovPropertyService.sample */
		searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
		searchVO.setPageSize(propertiesService.getInt("pageSize"));

		/** pageing setting */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());

		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<?> sampleList = planlistService.selectPlanList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = planlistService.selectPlanListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/planList";
	}
	@RequestMapping(value = "/addPlanListView.do")
	public String addPlanListView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("planlistVO", new PlanListVO());
		return "sample/planlistRegister";
	}

	@RequestMapping(value = "/addPlanList.do")
	public String addPlanList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, PlanListVO planlistVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		planlistService.insertPlanList(planlistVO);
		return "forward:/planList.do";
	}
	@RequestMapping(value = "/updatePlanListView.do")
	public String updatePlanListView(@RequestParam("selectedId") String cname, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		PlanListVO planlistVO = new PlanListVO();
		planlistVO.setCname(cname);
		model.addAttribute("planlistVO",selectPlan(planlistVO, searchVO));
		return "sample/planlistRegister";
	}
	public PlanListVO selectPlan(PlanListVO planlistVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return planlistService.selectPlan(planlistVO);
	}
	
	@RequestMapping("/updatePlanList.do")
	public String updatePlanList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, PlanListVO planlistVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
		planlistService.updatePlanList(planlistVO);
	return "forward:/planList.do";
	}
	@RequestMapping("/deletePlanList.do")
	public String deletePlanList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, PlanListVO planlistVO,  BindingResult bindingResult, Model model, SessionStatus status) throws Exception {
		planlistService.deletePlanList(planlistVO);
		return "forward:/planList.do";
	}
}
