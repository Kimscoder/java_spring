package com.spring.dto;

import java.util.Date;

public class NoticeVO {

	private int gno;
	private String  g_title;
	private String g_content;
	private Date g_createDate = new Date();
	private Date g_modifyDate;
	private int g_viewCnt;
	private String id; //농장주

	
	

	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
		this.gno = gno;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_content() {
		return g_content;
	}
	public void setG_content(String g_content) {
		this.g_content = g_content;
	}
	public Date getG_createDate() {
		return g_createDate;
	}
	public void setG_createDate(Date g_createDate) {
		this.g_createDate = g_createDate;
	}
	public Date getG_modifyDate() {
		return g_modifyDate;
	}
	public void setG_modifyDate(Date g_modifyDate) {
		this.g_modifyDate = g_modifyDate;
	}
	public int getG_viewCnt() {
		return g_viewCnt;
	}
	public void setG_viewCnt(int g_viewCnt) {
		this.g_viewCnt = g_viewCnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}