package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.dto.NoticeVO;

public interface NoticeService {

	public Map<String, Object> list(PageMaker pageMaker) throws SQLException;
	public Map<String, Object> search(PageMaker pageMaker) throws SQLException;
	public NoticeVO detail(int gno) throws SQLException;
	public NoticeVO getNotice(int gno) throws SQLException;
	public void regist(NoticeVO notice) throws SQLException;
	public void modify(NoticeVO notice) throws SQLException;
	public void remove(int gno) throws SQLException;
	public void increaseViewCnt(int gno) throws SQLException;



}
