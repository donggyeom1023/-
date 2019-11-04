package egovframework.example.sample.service;


public class BoardVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;
	
	private int bid;
	
	private String bname;
	
	private String content;
	
	private String writer;
	
	private int views;
	
	private int atchFileId;
	
	public int getAtchFileId() {
		return atchFileId;
	}

	public void setAtchFileId(int atchFileId) {
		this.atchFileId = atchFileId;
	}
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
}
