package com.tkhospital.dto;

public class ChatDTO {
	private int cno;
	private String cdetail;
	private String sendid;
	private String reqid;
	private String cdate;
	private int answer_val;
	private int nom; //number of messages
	
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCdetail() {
		return cdetail;
	}
	public void setCdetail(String cdetail) {
		this.cdetail = cdetail;
	}
	public String getSendid() {
		return sendid;
	}
	public void setSendid(String sendid) {
		this.sendid = sendid;
	}
	public String getReqid() {
		return reqid;
	}
	public void setReqid(String reqid) {
		this.reqid = reqid;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public int getAnswer_val() {
		return answer_val;
	}
	public void setAnswer_val(int answer_val) {
		this.answer_val = answer_val;
	}
	public int getNom() {
		return nom;
	}
	public void setNom(int nom) {
		this.nom = nom;
	}
	
	
}
