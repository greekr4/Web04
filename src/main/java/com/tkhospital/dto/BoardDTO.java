package com.tkhospital.dto;

import java.util.Date;

public class BoardDTO {
	private int no;
	private String tit;
	private String con;
	private String writer;
	private Date regdate;
	private int viewed;
	private int thumb;
	private int lock_post;
	private int type;
	private String search;
	private int reply_count;
	
	public int getNo() {return no;}
	public void setNo(int no) {this.no = no;}
	public String getTit() {return tit;}
	public void setTit(String tit) {this.tit = tit;}
	public String getCon() {return con;}
	public void setCon(String con) {this.con = con;}
	public String getWriter() {return writer;}
	public void setWriter(String writer) {this.writer = writer;}
	public Date getRegdate() {return regdate;}
	public void setRegdate(Date regdate) {this.regdate = regdate;}
	public int getViewed() {return viewed;}
	public void setViewed(int viewed) {this.viewed = viewed;}
	public int getThumb() {return thumb;}
	public void setThumb(int thumb) {this.thumb = thumb;}
	public int getLock_post() {return lock_post;}
	public void setLock_post(int lock_post) {this.lock_post = lock_post;}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
}
