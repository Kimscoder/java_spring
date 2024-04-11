package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.NoticeModifyCommand;
import com.spring.command.NoticeRegistCommand;
import com.spring.command.PageMaker;
import com.spring.dto.NoticeVO;
import com.spring.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@GetMapping("/main")
	public ModelAndView main(ModelAndView mnv) throws Exception {
		String url = "/main";

		mnv.setViewName(url);
		return mnv;

	}

	@GetMapping("/list")
	public ModelAndView list(@ModelAttribute PageMaker pageMaker, ModelAndView mnv) throws Exception {
		String url = "/notice/list";

		//검색조건 가져옴 
		String searchType = pageMaker.getSearchType();
		String keyword = pageMaker.getKeyword();
		
		//검색조건 존재확인 
		if(searchType != null && !searchType.isEmpty() && keyword != null && !keyword.isEmpty()) {
		//검색 조건을 이용하여 검색을 수행하고 결과를 가져옴 	
			Map<String, Object> noticeData = noticeService.search(pageMaker);
			
		}else {
//검색 조건이 없는경우 일반적인 리스트 조회를 수행 			
			Map<String, Object> noticeData = noticeService.list(pageMaker);
			mnv.addAllObjects(noticeData);
		}
		
		
		
		
		mnv.setViewName(url);

		return mnv;

	}

	@GetMapping("/detail")
	public ModelAndView detail(int gno, String from, ModelAndView mnv) throws Exception {
		String url = "/notice/detail";

		NoticeVO notice = null;
		if (from != null && from.equals("list")) {
			noticeService.increaseViewCnt(gno);
			url = "redirect:/detail?gno=" + gno;
		} else {
			notice = noticeService.getNotice(gno);
		}
		mnv.addObject("notice", notice);
		mnv.setViewName(url);
		return mnv;
	}

	@GetMapping("/modifyForm")
	public ModelAndView modifyFrom(int gno, ModelAndView mnv) throws Exception {
		String url = "/notice/modify";

		NoticeVO notice = noticeService.getNotice(gno);
		mnv.addObject("notice", notice);
		mnv.setViewName(url);
		return mnv;
	}

	@GetMapping("/registForm")
	public ModelAndView registFrom(ModelAndView mnv) throws Exception {
		String url = "/notice/regist";
		mnv.setViewName(url);
		return mnv;
	}

	@PostMapping("/modify")
	public ModelAndView modify(NoticeModifyCommand modifyCommand, ModelAndView mnv) throws Exception {
		String url = "redirect:/detail?gno=" + modifyCommand.getGno();

		NoticeVO notice = modifyCommand.toNoticeVO();
		noticeService.modify(notice);

		mnv.setViewName(url);
		return mnv;
	}

	@PostMapping(value = "/regist", produces = "text/plain;charset=utf-8")
	public ModelAndView regist(NoticeRegistCommand notCommand, ModelAndView mnv) throws Exception {

		String url = "/notice/regist_success";

		// db
		NoticeVO notice = notCommand.toNoticeVO();

		noticeService.regist(notice);
		mnv.setViewName(url);
		return mnv;
	}

	@GetMapping("remove")
	public ModelAndView remove(int gno, ModelAndView mnv) throws Exception {
		String url = "/notice/remove_success";
		noticeService.remove(gno);
		mnv.setViewName(url);
		return mnv;

	}
}
