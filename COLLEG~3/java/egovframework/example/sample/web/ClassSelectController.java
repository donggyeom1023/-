package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.ClassSelectService;
import egovframework.example.sample.service.ClassSelectVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class ClassSelectController {
	@Resource(name = "classselectService")
	private ClassSelectService classselectService;

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	@RequestMapping(value = "/classSelectpage.do")
	public String selectClassList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
		List<?> sampleList = classselectService.selectClassList(searchVO);
		model.addAttribute("resultList1", sampleList);
		return "sample/classSelectpage";
	}
	
	@RequestMapping(value = "/classdetailList.do")
	public String classdetailList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
		List<?> sampleList = classselectService.classdetailList(searchVO);
		model.addAttribute("resultList2", sampleList);
		return "sample/classdetail";
	}
	
	@RequestMapping(value = "/Classtimetable.do")
	public String Classtimetable(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
	
	return "sample/classtimetable";
	}
	
	@RequestMapping(value = "/selectView.do")
	public String selectView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("classselectVO", new ClassSelectVO());
		return "sample/classSeelectView";
	}
	
	public ClassSelectVO selectClassView(ClassSelectVO classselectVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return classselectService.selectClassView(classselectVO);
	}
	
}
