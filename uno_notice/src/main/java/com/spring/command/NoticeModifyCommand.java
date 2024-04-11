package com.spring.command;

import com.spring.dto.NoticeVO;

public class NoticeModifyCommand extends NoticeRegistCommand{

	private int gno;
	
	
	public int getGno() {
		return gno;
	}


	public void setGno(int gno) {
		this.gno = gno;
	}


	@Override
	public NoticeVO toNoticeVO() {
		NoticeVO notice=super.toNoticeVO();
		notice.setGno(this.gno);
		return notice;
		
		
	}
	
}
