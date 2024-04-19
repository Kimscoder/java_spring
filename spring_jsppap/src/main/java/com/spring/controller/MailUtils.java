package com.spring.controller;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.dto.memberVO;
import com.spring.service.MemberService;

public class MailUtils {
	@Autowired  MemberService memberService;
	
	public void sendEmail(memberVO member) throws Exception{
		//Mail Server 설정
		String charSet ="utf-8";
		String hostSMTP="smtp.gmail.com";
		String hostSMTPid="mkj425946@gmail.com";
		String hostSMTPpw="rkwhr40033512";
		
		String fromEmail="mkj425946@gmail.com";
		String fromName="UNO Farm";
		
		String subject="임시비밀번호 입니다";
		String msg="";
		
		msg +="<div align='left'";
		msg +="<h3>";
		msg +=member.getId() + "님의 임시 비밀번호입니다. <br>로그인 후 비밀번호를 변경해 주세요</h3>";
		msg +="<p>임시 비밀번호:";
		msg +=member.getPwd() + "</p></div>";
		
		//email전송
		String mailRecipient=member.getEmail();//받는 사람 이메일 주소
		try {
			//객체 선언
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true);
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(587); 
			mail.setAuthentication(hostSMTPid, hostSMTPpw);
			mail.setStartTLSEnabled(true);
			mail.addTo(mailRecipient,charSet);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void findPw(HttpServletResponse response,memberVO member) {
		response.setContentType("text/html;charset=utf-8");
		
	}
}

