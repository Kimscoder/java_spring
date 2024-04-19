package com.spring.service;


import java.sql.SQLException;
import java.util.UUID;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

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
	

	@Override
	public String findMemberId(String email) throws Exception {
		String id= memberDAO.findMemberId(email);
		
		if (id ==null) {
			System.out.println("<script>");
			System.out.println("alert('가입된 아이디가 없습니다.');");
			System.out.println("history.go(-1);");
			System.out.println("</script>");
			
			return null;
		}else {
			return id;
		}
		
	}

	@Override
	public void modifypwd(memberVO member) throws SQLException {
		memberDAO.updatePwd(member);		
	}

	@Override
	public void sendEmail(String useremail, String text ) throws Exception {
		Email email = new SimpleEmail();
		
		String msg ="";
		msg +="<div align='lift'";
		msg +="<h3>";
		msg += "로그인 후 비밀번호를 변경해 주세요</h3>";
		msg +="<p>임시 비밀번호:";
		msg += text+"</p></div>";
		
		
		email.setHostName("smtp.naver.com");
		email.setSmtpPort(587);
		email.setCharset("utf-8");
		email.setAuthenticator(new DefaultAuthenticator("mjk4259", "aw40033512"));
		email.setSSL(true);
		email.setFrom("mjk4259@naver.com", "UNO Farm");
		email.setSubject("임시 비밀번호 입니다.");
		email.setMsg(msg);
		email.addTo(useremail);
		email.send();
	}

	@Override
	public memberVO findMemberinfo(String email) throws SQLException {
		memberVO memberv = memberDAO.findMemberinfo(email);
		return memberv;
	}

	

	
	
	
}
