package egovframework.example.sample.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.BoardFileMngSevice;
import egovframework.example.sample.service.BoardFileMngUtil;
import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.FileVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class BoardController {
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;
	
	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@Resource(name = "boardFileMngSevice")
	private BoardFileMngSevice boardFileMngSevice;
	
    @Resource(name = "BoardFileMngUtil")
    private BoardFileMngUtil BoardFileMngUtil;
	
	@RequestMapping(value = "/boardList.do")
	public String selectBoardList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
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

		List<?> sampleList = boardService.selectBoardList(searchVO);
		model.addAttribute("resultList", sampleList);

		int totCnt = boardService.selectBoardListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);

		return "sample/boardList";
	}
	@RequestMapping(value = "/addboardtView.do")
	public String addboardtView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("boardVO", new BoardVO());
		return "sample/boardListRegister";
	}

	@RequestMapping(value = "/addboard.do")
	public String addboard(final MultipartHttpServletRequest multiRequest, BoardVO boardVO) throws Exception {
		List<FileVO> result = null;
		int atchFileId = 0;

		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if (!files.isEmpty()) {
			result = BoardFileMngUtil.parseFileInf(files, "BBS_", 0, 0, "");
			atchFileId = boardFileMngSevice.insertFileInfs(result);
		}
		boardVO.setAtchFileId(atchFileId);
		boardService.insertBoard(boardVO);
		return "forward:/boardList.do";
	}
	
	@RequestMapping("/updateBoardView.do")
	public String updateBoardView(@RequestParam("selectedId") String bname, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		BoardVO boardVO = new BoardVO();
		boardVO.setBname(bname);
		
		BoardVO deptResult = boardService.selectBoard(boardVO);
		
		
		String fileLoaction = "";
		if(deptResult.getAtchFileId() != 0){
			FileVO vo = new FileVO();
			vo.setAtchFileId(deptResult.getAtchFileId());
			vo.setFileSn("0");
			FileVO fvo = boardFileMngSevice.selectFileInf(vo);
			if (fvo != null) fileLoaction = "/images/"+ fvo.getStreFileNm();
			//fileLoaction = fvo.getFileStreCours().replace("\\", "/");
			//fileLoaction = fileLoaction +"/"+ fvo.getStreFileNm();
		}
		
		model.addAttribute("result", deptResult);
		model.addAttribute("fileLoaction", fileLoaction);
		
		return "sample/boardListView";
	}
	
	@RequestMapping(value = "/mainpage.do")
	public String MainPage(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
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
		
		List<?> sampleList = boardService.MainPage(searchVO);
		model.addAttribute("resultList1", sampleList);
		
		int totCnt = boardService.selectBoardListTotCnt(searchVO);
		paginationInfo.setTotalRecordCount(totCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		return "sample/mainpage";
	}
	
	@RequestMapping(value = "/collegemain.do")
	public String collegemain(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
		return "sample/collegemain";
	}
}
	
