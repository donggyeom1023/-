package egovframework.example.sample.service;


public class FreeboardVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;
	
	private int freebid;
	
	private String freebtitle;
	
	private String freebcontent;
	
	private String freebwriter;
	
	private int freebviewcnt;

	public int getFreebid() {
		return freebid;
	}

	public void setFreebid(int freebid) {
		this.freebid = freebid;
	}

	public String getFreebtitle() {
		return freebtitle;
	}

	public void setFreebtitle(String freebtitle) {
		this.freebtitle = freebtitle;
	}

	public String getFreebcontent() {
		return freebcontent;
	}

	public void setFreebcontent(String freebcontent) {
		this.freebcontent = freebcontent;
	}

	public String getFreebwriter() {
		return freebwriter;
	}

	public void setFreebwriter(String freebwriter) {
		this.freebwriter = freebwriter;
	}

	public int getFreebviewcnt() {
		return freebviewcnt;
	}

	public void setFreebviewcnt(int freebviewcnt) {
		this.freebviewcnt = freebviewcnt;
	}
	
}