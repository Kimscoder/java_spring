package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.dao.memberDAO;
import com.spring.dto.memberVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdentityException;

public class MemberServiceImpl implements MemberService{

	private memberDAO memberDAO;
	public void setMemberDAO(memberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public memberVO login(String id, String pwd) throws NotFoundIdentityException, InvalidPasswordException, SQLException {
		
		memberVO member = memberDAO.selectMemberById(id);
		
		if(member==null)throw new NotFoundIdentityException();
		if(!pwd.equals(member.getPwd())) throw new InvalidPasswordException();
		
		return member;
	}
	
}
