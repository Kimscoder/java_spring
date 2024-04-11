package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.dao.NoticeDAO;
import com.spring.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService{
	private NoticeDAO noticeDAO;
	public void setNoticeDAO (NoticeDAO noticeDAO) {
	this.noticeDAO = noticeDAO;
	}
	
	
	
	@Override
	public Map<String, Object> list(PageMaker pageMaker) throws SQLException {
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(pageMaker);
		int totalCount = noticeDAO.selectSearchNoticeListCount(pageMaker);
		
		pageMaker.setTotalCount(totalCount);
		
		Map<String,Object>dataMap = new HashMap<String, Object>();
		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public NoticeVO detail(int gno) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByGno(gno);
		noticeDAO.increaseViewCnt(gno);
		return notice;
	}

	@Override
	public NoticeVO getNotice(int gno) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByGno(gno);
		return notice;
		
	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
		int gno = noticeDAO.selectNoticeSequenceNextValue();
		notice.setGno(gno);
		noticeDAO.insertNoitce(notice);
		
	}
	
	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
	}
		

	@Override
	public void remove(int gno) throws SQLException {
		noticeDAO.deleteNotice(gno);
		
	}

	@Override
	public void increaseViewCnt(int gno) throws SQLException {
		noticeDAO.increaseViewCnt(gno);
		
	}



	@Override
	public Map<String, Object> search(PageMaker pageMaker) throws SQLException {
		 Map<String, Object> resultMap = new HashMap<>();
	        try {
	            // MyBatis의 SqlSession을 사용하여 매퍼 파일에서 정의된 쿼리 호출
	            List<NoticeVO> searchResultList = noticeDAO.selectSearchNoticeList(pageMaker);
	            
	            // 검색 결과를 결과 맵에 저장
	            resultMap.put("searchResultList", searchResultList);
	            // 다른 필요한 정보들도 추가 가능
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            throw new SQLException("검색 과정에서 오류가 발생했습니다.");
	        }
	        return resultMap;
	}

}
