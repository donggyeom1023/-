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

import egovframework.example.sample.service.MainNewsService;
import egovframework.example.sample.service.MainNewsVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MainNewsController {
	@Resource(name = "mainnewsService")
	private MainNewsService mainnewsservice;
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@RequestMapping(value = "/mainNews.do")
	public String selectBoardList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap modelmap, Model model) throws Exception {
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

		List<?> sampleList = mainnewsservice.selectMainNewsList(searchVO);
		modelmap.addAttribute("resultList", sampleList);

		int totCnt = mainnewsservice.selectMainNewsListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		modelmap.addAttribute("paginationInfo", paginationInfo);

		return "sample/mainNews";
	}
	@RequestMapping(value = "/updateMainNewsView.do")
	public String updateMainNewsView(@RequestParam("selectedId") int mno, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		MainNewsVO mainnewsVO = new MainNewsVO();
		mainnewsVO.setMno(mno);
		model.addAttribute("mainnewsVO",selectMainNews(mainnewsVO, searchVO));
		return "sample/MainNewsRegister";
	}
	public MainNewsVO selectMainNews(MainNewsVO mainnewsVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return mainnewsservice.selectMainNews(mainnewsVO);
	}
	
	@RequestMapping("/updateMainNews.do")
	public String updateMainNews(@ModelAttribute("searchVO") SampleDefaultVO searchVO, MainNewsVO mainnewsVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
	mainnewsservice.updateMainNews(mainnewsVO);
	return "forward:/MainNews.do";
		
	}
}
	
