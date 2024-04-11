package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.memberVO;

public interface memberDAO {
	memberVO selectMemberById(String id)throws SQLException;
}
