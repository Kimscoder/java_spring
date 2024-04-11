package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.PageMaker;
import com.spring.dto.NoticeVO;

public interface NoticeDAO {
	List <NoticeVO> selectSearchNoticeList(PageMaker pageMaker) throws SQLException;
	int selectSearchNoticeListCount(PageMaker pageMaker) throws SQLException;

	NoticeVO selectNoticeByGno(int gno) throws SQLException;
	
	int selectNoticeSequenceNextValue() throws SQLException;
	void increaseViewCnt(int gno) throws SQLException;
	void insertNoitce(NoticeVO notice) throws SQLException;
	void updateNotice(NoticeVO notice) throws SQLException;
	void deleteNotice(int gno) throws SQLException;
	
	
}
