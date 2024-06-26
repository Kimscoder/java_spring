package com.spring.controller;

import java.util.List;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dao.memberDAO;
import com.spring.dto.MenuVO;
import com.spring.dto.memberVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdentityException;
import com.spring.service.MemberService;
import com.spring.service.MenuService;

@Controller
public class loginController {
	
	@Autowired
	private MemberService memberService;
	

	
	@Autowired
	private memberDAO MemberDAO;
	
	@Autowired
	private MenuService menuService;
	@GetMapping("/index.do")
	public ModelAndView main(String mCode,ModelAndView mnv)throws Exception{
		String url="/pola/indexpage";
		List<MenuVO> menuList = menuService.getMainMenuList();
		
		 if(mCode!=null) {
		    	MenuVO menu= menuService.getMenuByMcode(mCode);
		    	mnv.addObject("menu",menu);
		    }
		  
		    
			mnv.addObject("menuList",menuList);
			mnv.setViewName(url);
			return mnv;
	}
	@GetMapping("/main")
	public ModelAndView mainhome(ModelAndView mnv)throws Exception{
		String url ="/pola/main";
		
		mnv.setViewName(url);
		return mnv;
	}
	@GetMapping("/loginForm")
	public ModelAndView registForm(ModelAndView mnv,String retUrl) throws Exception {
		String url="/login/form";
		mnv.addObject("retUrl",retUrl);
		mnv.setViewName(url);
		return mnv;
	}
	@PostMapping("/loginForm")
	public ModelAndView loginPost(String id, String pwd,String retUrl,
								  HttpSession session, 
								  RedirectAttributes rttr,
								  ModelAndView mnv)throws Exception{
		String url="redirect:/index.do";
		
		try {
			memberService.login(id, pwd);
			
			memberVO member = MemberDAO.selectMemberById(id);
			session.setAttribute("loginUser", member);
			session.setMaxInactiveInterval(30*60);
			
			session.getServletContext().setAttribute("loginUser", member.getId());
		
			if(retUrl != null && !retUrl.isEmpty()) {
				url="redirect:"+retUrl;
			}
			
		}catch(NotFoundIdentityException | InvalidPasswordException e) {
			url="redirect:/common/loginForm?retUrl="+retUrl;
			// rttr.addAttribute(attributeValue) : 주소줄 데이터 전달
			rttr.addFlashAttribute("message",e.getMessage()); //requset 전달방식
		}
		
		mnv.setViewName(url);
		return mnv;
	}
	@GetMapping("/searchid")
	public ModelAndView serchId(ModelAndView mnv)throws Exception{
		String url = "/login/searchid";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@PostMapping("/searchid")
	public ModelAndView searchId(@RequestParam("email") String email, 
	                             ModelAndView mnv) throws Exception{
	    
	    String memberId = memberService.findMemberId(email);

	    mnv.addObject("id", memberId);

	 
	    mnv.setViewName("/login/find_id");

	    return mnv;
	}
	
	@GetMapping("/searchpwd")
	public ModelAndView serchPwd(ModelAndView mnv)throws Exception{
		String url = "/login/searchpwd";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@PostMapping("/searchpwd")
	public ModelAndView searchPwd(@RequestParam("email") String email,
	                             ModelAndView mnv) throws Exception{
		memberVO vo1 = memberService.findMemberinfo(email);
		System.out.println(vo1.getId());
		String tempPw=UUID.randomUUID().toString().replace("-", "");//-를 제거
		tempPw = tempPw.substring(0,10);//tempPw를 앞에서부터 10자리 잘라줌
		
		vo1.setPwd(tempPw);
		
		memberService.modifypwd(vo1);
		memberService.sendEmail(email, tempPw);
		mnv.addObject("email",email);	
		mnv.setViewName("/login/findpw");
	    return mnv;
	}
	
	@GetMapping("/transor")
	public ModelAndView transit(ModelAndView mnv)throws Exception{
		String url = "/pola/transor";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/common")
	public ModelAndView main(ModelAndView mnv)throws Exception{
		String url = "/pola/indexpage";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(String id,HttpSession session, ModelAndView mnv)throws Exception{
		String url="redirect:/loginForm";
	
		session.invalidate();
		
		mnv.setViewName(url);
		return mnv;
	}

	
}
