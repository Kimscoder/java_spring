package com.spring.service;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;

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
	public void sendEmail(memberVO member,String div) throws Exception {
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "mjk4259";
		String hostSMTPpwd ="aw40033512";
		
		String fromEmail = "min4259@naver.com";
		String fromName = "우노 프로젝트";
		String subject ="";
		String msg ="";
		msg +="<p>임시 비밀번호</p>";
		
		if(div.equals("findpwd")) {
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += member.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += member.getPwd() + "</p></div>";
		}
		
		String mail =member.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
            email.setCharset(charSet);
            email.setSSL(true);
            email.setHostName(hostSMTP);
            email.setSmtpPort(587); //네이버 이용시 587이라고 한다.

            email.setAuthentication(hostSMTPid, hostSMTPpwd);
            email.setTLS(true);
            email.addTo(mail, charSet);
            email.setFrom(fromEmail, fromName, charSet);
            email.setSubject(subject);
            email.setHtmlMsg(msg);
            email.send();
		}catch(Exception e) {
			System.out.println("메일발송 실패 : "+ e);
		}
	}

	@Override
	public void findpwd(memberVO member) throws Exception {
		memberVO memberio = memberDAO.selectMemberById(member.getId());
		
		// 가입된 이메일이 아니면
	    if(!member.getEmail().equals(memberio.getEmail())) {
	    	
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			member.setPwd(pw);
			// 비밀번호 변경
			memberDAO.update_pw(member);
			// 비밀번호 변경 메일 발송
			sendEmail(member, "findpw");

	}
}
}
