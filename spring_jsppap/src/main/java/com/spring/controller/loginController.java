package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginController {

	@GetMapping("/loginForm")
	public ModelAndView registForm(ModelAndView mnv) throws Exception {
		String url="/login/form";
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/searchid")
	public ModelAndView serchId(ModelAndView mnv)throws Exception{
		String url = "/login/searchid";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/searchpwd")
	public ModelAndView serchPwd(ModelAndView mnv)throws Exception{
		String url = "/login/searchpwd";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/transit")
	public ModelAndView transit(ModelAndView mnv)throws Exception{
		String url = "/pola/transit";
		
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/common")
	public ModelAndView main(ModelAndView mnv)throws Exception{
		String url = "/pola/common";
		
		mnv.setViewName(url);
		return mnv;
	}
}
