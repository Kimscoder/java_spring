package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.memberVO;

public class memberDAOImpl implements memberDAO{
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session= session;
	}

	@Override
	public memberVO selectMemberById(String id) throws SQLException {
		
		return session.selectOne("Member-Mapper.selectMemberById",id);
	}

	@Override
	public String findMemberId(String email) throws SQLException {
	
		return session.selectOne("Member-Mapper.findMemberId",email);
	}

	@Override
	public void updatePwd(memberVO member) throws SQLException {
		session.update("Member-Mapper.updatepwd",member);
		
	}

	@Override
	public memberVO searchpwd(memberVO member) throws SQLException {
		
		return session.selectOne("Member-Mapper.searchPwd",member);
	}

	@Override
	public memberVO findMemberinfo(String email) throws SQLException {
		return session.selectOne("Member-Mapper.findMemberinfo", email);
	}

	

	
                                                             
	
}
