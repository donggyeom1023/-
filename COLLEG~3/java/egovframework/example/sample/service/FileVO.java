package egovframework.example.sample.service;

import java.io.Serializable;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class FileVO implements Serializable {

    /**
	 *  serialVersion UID
	 */
	private static final long serialVersionUID = -287950405903719128L;
	/**
     * 첨부파일 아이디
     */
    public int atchFileId;
    /**
     * 생성일자
     */
    public String creatDt = "";
    /**
     * 파일내용
     */
    public String fileCn = "";
    /**
     * 파일확장자
     */
    public String fileExtsn = "";
    /**
     * 파일크기
     */
    public String fileMg = "";
    /**
     * 파일연번
     */
    public String fileSn = "";
    /**
     * 파일저장경로
     */
    public String fileStreCours = "";
    /**
     * 원파일명
     */
    public String orignlFileNm = "";
    /**
     * 저장파일명
     */
    public String streFileNm = "";

	public int getAtchFileId() {
		return atchFileId;
	}

	public void setAtchFileId(int atchFileId) {
		this.atchFileId = atchFileId;
	}

	/**
     * creatDt attribute를 리턴한다.
     *
     * @return the creatDt
     */
    public String getCreatDt() {
	return creatDt;
    }

    /**
     * creatDt attribute 값을 설정한다.
     *
     * @param creatDt
     *            the creatDt to set
     */
    public void setCreatDt(String creatDt) {
	this.creatDt = creatDt;
    }

    /**
     * fileCn attribute를 리턴한다.
     *
     * @return the fileCn
     */
    public String getFileCn() {
	return fileCn;
    }

    /**
     * fileCn attribute 값을 설정한다.
     *
     * @param fileCn
     *            the fileCn to set
     */
    public void setFileCn(String fileCn) {
	this.fileCn = fileCn;
    }

    /**
     * fileExtsn attribute를 리턴한다.
     *
     * @return the fileExtsn
     */
    public String getFileExtsn() {
	return fileExtsn;
    }

    /**
     * fileExtsn attribute 값을 설정한다.
     *
     * @param fileExtsn
     *            the fileExtsn to set
     */
    public void setFileExtsn(String fileExtsn) {
	this.fileExtsn = fileExtsn;
    }

    /**
     * fileMg attribute를 리턴한다.
     *
     * @return the fileMg
     */
    public String getFileMg() {
	return fileMg;
    }

    /**
     * fileMg attribute 값을 설정한다.
     *
     * @param fileMg
     *            the fileMg to set
     */
    public void setFileMg(String fileMg) {
	this.fileMg = fileMg;
    }

    /**
     * fileSn attribute를 리턴한다.
     *
     * @return the fileSn
     */
    public String getFileSn() {
	return fileSn;
    }

    /**
     * fileSn attribute 값을 설정한다.
     *
     * @param fileSn
     *            the fileSn to set
     */
    public void setFileSn(String fileSn) {
	this.fileSn = fileSn;
    }

    /**
     * fileStreCours attribute를 리턴한다.
     *
     * @return the fileStreCours
     */
    public String getFileStreCours() {
	return fileStreCours;
    }

    /**
     * fileStreCours attribute 값을 설정한다.
     *
     * @param fileStreCours
     *            the fileStreCours to set
     */
    public void setFileStreCours(String fileStreCours) {
	this.fileStreCours = fileStreCours;
    }

    /**
     * orignlFileNm attribute를 리턴한다.
     *
     * @return the orignlFileNm
     */
    public String getOrignlFileNm() {
	return orignlFileNm;
    }

    /**
     * orignlFileNm attribute 값을 설정한다.
     *
     * @param orignlFileNm
     *            the orignlFileNm to set
     */
    public void setOrignlFileNm(String orignlFileNm) {
	this.orignlFileNm = orignlFileNm;
    }

    /**
     * streFileNm attribute를 리턴한다.
     *
     * @return the streFileNm
     */
    public String getStreFileNm() {
	return streFileNm;
    }

    /**
     * streFileNm attribute 값을 설정한다.
     *
     * @param streFileNm
     *            the streFileNm to set
     */
    public void setStreFileNm(String streFileNm) {
	this.streFileNm = streFileNm;
    }

    /**
     * toString 메소드를 대치한다.
     */
    public String toString() {
	return ToStringBuilder.reflectionToString(this);
    }

}