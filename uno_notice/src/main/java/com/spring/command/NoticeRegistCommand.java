package com.spring.command;

import com.spring.dto.NoticeVO;

public class NoticeRegistCommand {

	private String g_title;
	private String g_content;
	private String id;
	
	
	
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public NoticeVO toNoticeVO() {
		NoticeVO notice = new NoticeVO();
		notice.setG_content(this.g_content);
		notice.setG_title(this.g_title);
		notice.setId(this.id);
		return notice;
		
		
	}
	
	
	
}
