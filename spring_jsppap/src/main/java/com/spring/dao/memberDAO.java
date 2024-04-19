package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.memberVO;

public interface memberDAO {
	memberVO selectMemberById(String id)throws SQLException;
	String findMemberId( String email)throws SQLException;
	void updatePwd(memberVO member)throws SQLException;
	memberVO searchpwd(memberVO member)throws SQLException;
	
	memberVO findMemberinfo(String email)throws SQLException;
}
