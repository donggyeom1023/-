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

import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.FreeboardService;
import egovframework.example.sample.service.FreeboardVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class FreeboardController {
	@Resource(name = "freeboardService")
	private FreeboardService freeboardService;
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@RequestMapping(value = "/freeboard.do")
	public String selectFreeboardList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
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

		List<?> sampleList = freeboardService.selectFreeboardList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = freeboardService.selectFreeboardListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/freeboard";
	}
	
	@RequestMapping(value = "/addFreeBoardView.do")
	public String addFreeBoardView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("freeboardVO", new FreeboardVO());
		return "sample/freeboardListRegister";
	}

	@RequestMapping(value = "/addFreeBoard.do")
	public String addFreeBoard(@ModelAttribute("searchVO") SampleDefaultVO searchVO, FreeboardVO freeboardVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		freeboardService.insertFreeBoard(freeboardVO);
		return "forward:/freeboard.do";
	}
	
	
	@RequestMapping("/updateFreeboardView.do")
	public String updateFreeboardView(@RequestParam("selectedId") String freebtitle, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		FreeboardVO freeboardVO = new FreeboardVO();
		freeboardVO.setFreebtitle(freebtitle);
		// 변수명은 CoC 에 따라 sampleVO
		model.addAttribute("freeboardVO",selectFreeboard(freeboardVO, searchVO));
		return "sample/freeboardListRegister";
	}
	public FreeboardVO selectFreeboard(FreeboardVO freeboardVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return freeboardService.selectFreeboard(freeboardVO);
	}
	@RequestMapping("/updateFreeboard.do")
	public String updateFreeboard(@ModelAttribute("searchVO") SampleDefaultVO searchVO, FreeboardVO freeboardVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
		freeboardService.updateFreeboard(freeboardVO);
		return "forward:/freeboardListRegister.do";
		
	}
}
	
