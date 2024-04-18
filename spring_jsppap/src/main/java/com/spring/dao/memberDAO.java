package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.memberVO;

public interface memberDAO {
	memberVO selectMemberById(String id)throws SQLException;
	String findMemberId( String email)throws SQLException;
	int update_pw(memberVO MemberVO)throws SQLException;
}
