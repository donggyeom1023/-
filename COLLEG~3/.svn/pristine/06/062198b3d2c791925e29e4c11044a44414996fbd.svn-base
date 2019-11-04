package egovframework.example.sample.service.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.FileVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @Class Name : EgovFileMngDAO.java
 * @Description : 파일정보 관리를 위한 데이터 처리 클래스
 * @Modification Information
 *
 *    수정일       수정자         수정내용
 *    -------        -------     -------------------
 *    2009. 3. 25.     이삼섭    최초생성
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 3. 25.
 * @version
 * @see
 *
 */
@Repository("fileMngDAO")
public class FileManageDAO extends EgovAbstractDAO {

	@SuppressWarnings("unchecked")
	public List<FileVO> selectFileInfs(FileVO vo) throws Exception {
		return (List<FileVO>) list("fileMngDAO.selectFileList", vo);
	}
	/**
	 * 하나의 파일에 대한 정보(속성 및 상세)를 등록한다.
	 *
	 * @param vo
	 * @throws Exception
	 */
	public void insertFileInf(FileVO vo) throws Exception {
		insert("fileMngDAO.insertFileMaster", vo);
		insert("fileMngDAO.insertFileDetail", vo);
	}
	/**
	 * 여러 개의 파일에 대한 정보(속성 및 상세)를 등록한다.
	 *
	 * @param fileList
	 * @return
	 * @throws Exception
	 */
	public int insertFileInfs(List<?> fileList) throws Exception {
		FileVO vo = (FileVO) fileList.get(0);
		int atchFileId = vo.getAtchFileId();

		insert("fileMngDAO.insertFileMaster", vo);

		Iterator<?> iter = fileList.iterator();
		while (iter.hasNext()) {
			vo = (FileVO) iter.next();

			insert("fileMngDAO.insertFileDetail", vo);
		}

		return atchFileId;
	 }
	 /**
	 * 여러 개의 파일에 대한 정보(속성 및 상세)를 수정한다.
	 *
	 * @param fileList
	 * @throws Exception
	 */
	public void updateFileInfs(List<?> fileList) throws Exception {
		FileVO vo;
		Iterator<?> iter = fileList.iterator();
		while (iter.hasNext()) {
			vo = (FileVO) iter.next();

			insert("fileMngDAO.insertFileDetail", vo);
		}
	}
	/**
	 * 파일에 대한 상세정보를 조회한다.
	 *
	 * @param fvo
	 * @return
	 * @throws Exception
	 */
	public FileVO selectFileInf(FileVO fvo) throws Exception {
		return (FileVO) select("fileMngDAO.selectFileInf", fvo);
	}
	
	public int getMaxFileSN(FileVO fvo) throws Exception {
		return (Integer) select("FileManageDAO.getMaxFileSN", fvo);
	}
	
	@SuppressWarnings("unchecked")
	public List<FileVO> selectFileListByFileNm(FileVO fvo) throws Exception {
		return (List<FileVO>) list("FileManageDAO.selectFileListByFileNm", fvo);
	}

	/**
	 * 파일명 검색에 대한 목록 전체 건수를 조회한다.
	 *
	 * @param fvo
	 * @return
	 * @throws Exception
	 */
	public int selectFileListCntByFileNm(FileVO fvo) throws Exception {
		return (Integer) select("FileManageDAO.selectFileListCntByFileNm", fvo);
	}
	/**
	 * 이미지 파일에 대한 목록을 조회한다.
	 *
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<FileVO> selectImageFileList(FileVO vo) throws Exception {
		return (List<FileVO>) list("FileManageDAO.selectImageFileList", vo);
	}
	
	/**
	 * 여러 개의 파일을 삭제한다.
	 *
	 * @param fileList
	 * @throws Exception
	 *//*
	public void deleteFileInfs(List<?> fileList) throws Exception {
		Iterator<?> iter = fileList.iterator();
		FileVO vo;
		while (iter.hasNext()) {
			vo = (FileVO) iter.next();

			delete("FileManageDAO.deleteFileDetail", vo);
		}
	}

	*//**
	 * 하나의 파일을 삭제한다.
	 *
	 * @param fvo
	 * @throws Exception
	 *//*
	public void deleteFileInf(FileVO fvo) throws Exception {
		delete("FileManageDAO.deleteFileDetail", fvo);
	}

	*//**
	 * 파일에 대한 목록을 조회한다.
	 *
	 * @param vo
	 * @return
	 * @throws Exceptio
	 *
	 * 파일 구분자에 대한 최대값을 구한다.
	 *
	 * @param fvo
	 * @return
	 * @throws Exception
	 */

	/**
	 * 전체 파일을 삭제한다.
	 *
	 * @param fvo
	 * @throws Exception
	 *//*
	public void deleteAllFileInf(FileVO fvo) throws Exception {
		update("FileManageDAO.deleteCOMTNFILE", fvo);
	}

	*//**
	 * 파일명 검색에 대한 목록을 조회한다.
	 *
	 * @param vo
	 * @return
	 * @throws Exception
	 */
}
