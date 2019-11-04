package egovframework.example.sample.service;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;

@Component("BoardFileMngUtil")
public class BoardFileMngUtil {
	
	public static final int BUFF_SIZE = 2048;
	
	@Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

    @Resource(name = "boardFileMngSevice")
	private BoardFileMngSevice boardFileMngSevice;
    
    private static final Logger LOGGER = LoggerFactory.getLogger(BoardFileMngUtil.class);

    /**
     * 첨부파일에 대한 목록 정보를 취득한다.
     *
     * @param files
     * @return
     * @throws Exception
     */
    public List<FileVO> parseFileInf(Map<String, MultipartFile> files, String KeyStr, int fileKeyParam, int atchFileId, String storePath) throws Exception {
	int fileKey = fileKeyParam;

	String storePathString = "";
	int atchFileIdString = 0;

	if ("".equals(storePath) || storePath == null) {
	    storePathString = propertyService.getString("Globals.fileStorePath");
	} else {
	    storePathString = propertyService.getString(storePath);
	}

	File saveFolder = new File(storePathString);

	if (!saveFolder.exists() || saveFolder.isFile()) {
	    saveFolder.mkdirs();
	}

	Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
	MultipartFile file;
	String filePath = "";
	List<FileVO> result  = new ArrayList<FileVO>();
	FileVO fvo;

	while (itr.hasNext()) {
	    Entry<String, MultipartFile> entry = itr.next();

	    file = entry.getValue();
	    String orginFileName = file.getOriginalFilename();

	    //--------------------------------------
	    // 원 파일명이 없는 경우 처리
	    // (첨부가 되지 않은 input file type)
	    //--------------------------------------
	    if ("".equals(orginFileName)) {
		continue;
	    }
	    ////------------------------------------

	    int index = orginFileName.lastIndexOf(".");
	    String fileExt = orginFileName.substring(index + 1);
	    String newName = KeyStr + EgovStringUtil.getTimeStamp() + fileKey;
	    long _size = file.getSize();

	    if (!"".equals(orginFileName)) {
		filePath = storePathString + File.separator + newName;
		file.transferTo(new File(filePath));
	    }
	    fvo = new FileVO();
	    fvo.setFileExtsn(fileExt);
	    fvo.setFileStreCours(storePathString);
	    fvo.setFileMg(Long.toString(_size));
	    fvo.setOrignlFileNm(orginFileName);
	    fvo.setStreFileNm(newName);
	    fvo.setAtchFileId(atchFileIdString);
	    fvo.setFileSn(String.valueOf(fileKey));
	    result.add(fvo);

	    fileKey++;
	}

	return result;
    }

    /**
     * 첨부파일을 서버에 저장한다.
     *
     * @param file
     * @param newName
     * @param stordFilePath
     * @throws Exception
     */
    protected void writeUploadedFile(MultipartFile file, String newName, String stordFilePath) throws Exception {
	InputStream stream = null;
	OutputStream bos = null;
	String stordFilePathReal = (stordFilePath==null?"":stordFilePath).replaceAll("..","");
	try {
	    stream = file.getInputStream();
	    File cFile = new File(stordFilePathReal);

	    if (!cFile.isDirectory()) {
		boolean _flag = cFile.mkdir();
		if (!_flag) {
		    throw new IOException("Directory creation Failed ");
		}
	    }

	    bos = new FileOutputStream(stordFilePathReal + File.separator + newName);

	    int bytesRead = 0;
	    byte[] buffer = new byte[BUFF_SIZE];

	    while ((bytesRead = stream.read(buffer, 0, BUFF_SIZE)) != -1) {
		bos.write(buffer, 0, bytesRead);
	    }
	} catch (FileNotFoundException fnfe) {
		LOGGER.debug("fnfe: {}", fnfe);
	} catch (IOException ioe) {
		LOGGER.debug("ioe: {}", ioe);
	} catch (Exception e) {
		LOGGER.debug("e: {}", e);
	} finally {
	    if (bos != null) {
		try {
		    bos.close();
		} catch (Exception ignore) {
			LOGGER.debug("IGNORED: {}", ignore.getMessage());
		}
	    }
	    if (stream != null) {
		try {
		    stream.close();
		} catch (Exception ignore) {
			LOGGER.debug("IGNORED: {}", ignore.getMessage());
		}
	    }
	}
    }

    /**
     * 서버의 파일을 다운로드한다.
     *
     * @param request
     * @param response
     * @throws Exception
     */
    public static void downFile(HttpServletRequest request, HttpServletResponse response) throws Exception {

    String downFileName = EgovStringUtil.isNullToString(request.getAttribute("downFile")).replaceAll("..","");
    String orgFileName = EgovStringUtil.isNullToString(request.getAttribute("orgFileName")).replaceAll("..","");

	File file = new File(downFileName);

	if (!file.exists()) {
	    throw new FileNotFoundException(downFileName);
	}

	if (!file.isFile()) {
	    throw new FileNotFoundException(downFileName);
	}

	byte[] b = new byte[BUFF_SIZE]; //buffer size 2K.
    String fName = (new String(orgFileName.getBytes(), "UTF-8")).replaceAll("\r\n","");
	response.setContentType("application/x-msdownload");
	response.setHeader("Content-Disposition:", "attachment; filename=" + fName);
	response.setHeader("Content-Transfer-Encoding", "binary");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	BufferedInputStream fin = null;
	BufferedOutputStream outs = null;

	try {
		fin = new BufferedInputStream(new FileInputStream(file));
	    outs = new BufferedOutputStream(response.getOutputStream());
	    int read = 0;

		while ((read = fin.read(b)) != -1) {
		    outs.write(b, 0, read);
		}
	} finally {
	    if (outs != null) {
			try {
			    outs.close();
			} catch (Exception ignore) {
				LOGGER.debug("IGNORED: {}", ignore.getMessage());
			}
		    }
		    if (fin != null) {
			try {
			    fin.close();
			} catch (Exception ignore) {
				LOGGER.debug("IGNORED: {}", ignore.getMessage());
			}
		    }
		}
    }
    /**
     * 파일을 실제 물리적인 경로에 생성한다.
     *
     * @param file
     * @param newName
     * @param stordFilePath
     * @throws Exception
     */
    protected static void writeFile(MultipartFile file, String newName, String stordFilePath) throws Exception {
	InputStream stream = null;
	OutputStream bos = null;
	newName = EgovStringUtil.isNullToString(newName).replaceAll("..", "");
	stordFilePath = EgovStringUtil.isNullToString(stordFilePath).replaceAll("..", "");
	try {
	    stream = file.getInputStream();
	    File cFile = new File(stordFilePath);

	    if (!cFile.isDirectory())
		cFile.mkdir();

	    bos = new FileOutputStream(stordFilePath + File.separator + newName);

	    int bytesRead = 0;
	    byte[] buffer = new byte[BUFF_SIZE];

	    while ((bytesRead = stream.read(buffer, 0, BUFF_SIZE)) != -1) {
		bos.write(buffer, 0, bytesRead);
	    }
	} catch (FileNotFoundException fnfe) {
		LOGGER.debug("fnfe: {}", fnfe);
	} catch (IOException ioe) {
		LOGGER.debug("ioe: {}", ioe);
	} catch (Exception e) {
		LOGGER.debug("e: {}", e);
	} finally {
	    if (bos != null) {
		try {
		    bos.close();
		} catch (Exception ignore) {
			LOGGER.debug("IGNORED: {}", ignore.getMessage());
		}
	    }
	    if (stream != null) {
		try {
		    stream.close();
		} catch (Exception ignore) {
			LOGGER.debug("IGNORED: {}", ignore.getMessage());
		}
	    }
	}
    }

    /**
     * 서버 파일에 대하여 다운로드를 처리한다.
     *
     * @param response
     * @param streFileNm
     *            : 파일저장 경로가 포함된 형태
     * @param orignFileNm
     * @throws Exception
     */
    public void downFile(HttpServletResponse response, String streFileNm, String orignFileNm) throws Exception {
    String downFileName = EgovStringUtil.isNullToString(streFileNm).replaceAll("..","");
	String orgFileName = EgovStringUtil.isNullToString(orignFileNm).replaceAll("..","");

	File file = new File(downFileName);

	if (!file.exists()) {
	    throw new FileNotFoundException(downFileName);
	}

	if (!file.isFile()) {
	    throw new FileNotFoundException(downFileName);
	}

	//byte[] b = new byte[BUFF_SIZE]; //buffer size 2K.
	int fSize = (int)file.length();
	if (fSize > 0) {
	    BufferedInputStream in = null;

	    try {
		in = new BufferedInputStream(new FileInputStream(file));

    	    	String mimetype = "text/html"; //"application/x-msdownload"

    	    	response.setBufferSize(fSize);
		response.setContentType(mimetype);
		response.setHeader("Content-Disposition:", "attachment; filename=" + orgFileName);
		response.setContentLength(fSize);
		//response.setHeader("Content-Transfer-Encoding","binary");
		//response.setHeader("Pragma","no-cache");
		//response.setHeader("Expires","0");
		FileCopyUtils.copy(in, response.getOutputStream());
	    } finally {
		if (in != null) {
		    try {
			in.close();
		    } catch (Exception ignore) {
		    	LOGGER.debug("IGNORED: {}", ignore.getMessage());
		    }
		}
	    }
	    response.getOutputStream().flush();
	    response.getOutputStream().close();
	}
    }
}
