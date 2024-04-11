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
}
