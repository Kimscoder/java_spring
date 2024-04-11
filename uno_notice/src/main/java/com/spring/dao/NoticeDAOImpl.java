package com.spring.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spring.command.PageMaker;
import com.spring.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
	this.sqlSession = sqlSession;
	}
	

	@Override
	public NoticeVO selectNoticeByGno(int gno) throws SQLException {
		NoticeVO notice = sqlSession.selectOne("Notice-Mapper.selectNoticeByGno",gno);
		return notice;
	}

	@Override
	public void increaseViewCnt(int gno) throws SQLException {
		sqlSession.update("Notice-Mapper.increaseViewCnt",gno);
		
	}

	@Override
	public int selectNoticeSequenceNextValue() throws SQLException {
		int gno =sqlSession.selectOne("Notice-Mapper.selectNoticeSequenceNextValue");
		return gno;
	}


	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		sqlSession.update("Notice-Mapper.updateNotice",notice);
		
		
	}

	@Override
	public void insertNoitce(NoticeVO notice) throws SQLException {
		sqlSession.insert("Notice-Mapper.insertNotice",notice);
	}

	@Override
	public void deleteNotice(int gno) throws SQLException {
		sqlSession.delete("Notice-Mapper.deleteNotice",gno);
		
	}


	@Override
	public List<NoticeVO> selectSearchNoticeList(PageMaker pageMaker) throws SQLException {
		int startRow = pageMaker.getStartRow();
		int endRow = startRow+pageMaker.getPerPageNum();
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow",startRow);
		dataParam.put("endRow",endRow);
		dataParam.put("searchType",pageMaker.getSearchType());
		dataParam.put("keyword", pageMaker.getKeyword());
		
		List<NoticeVO> noticeList 
		=sqlSession.selectList("Notice-Mapper.selectSearchNoticeList",dataParam);
		return noticeList;
	}


	@Override
	public int selectSearchNoticeListCount(PageMaker pageMaker) throws SQLException {
		int count = sqlSession.selectOne("Notice-Mapper.selectSearchNoticeListCount",pageMaker);
		return count;
	}


}
