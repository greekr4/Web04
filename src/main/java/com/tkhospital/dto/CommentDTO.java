package com.tkhospital.dto;

import java.util.Date;

public class CommentDTO {
	private int cno;
	private int bno;
	private String writer;
	private String con;
	private Date regdate;
	private int thumb;
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getThumb() {
		return thumb;
	}
	public void setThumb(int thumb) {
		this.thumb = thumb;
	}
	
	
}
