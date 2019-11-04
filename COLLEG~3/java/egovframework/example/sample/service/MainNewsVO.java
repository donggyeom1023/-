package egovframework.example.sample.service;

import java.sql.Date;

public class MainNewsVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;
	
	private int mno;
	
	private String mname;
	
	private String mcontent;
	
	private Date stdate;
	
	private Date enddate;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public Date getStdate() {
		return stdate;
	}
	public void setStdate(Date stdate) {
		this.stdate = stdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
}
