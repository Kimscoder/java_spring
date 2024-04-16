package com.spring.service;

import java.sql.SQLException;

import com.spring.dto.memberVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdentityException;

public interface MemberService {
	memberVO login(String id, String pwd)throws NotFoundIdentityException,
												InvalidPasswordException,
												SQLException;
	String findMemberId(String email) throws Exception;
	}

