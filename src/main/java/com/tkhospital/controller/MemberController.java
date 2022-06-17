package com.tkhospital.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tkhospital.common.ScriptUtils;
import com.tkhospital.dto.MemberDTO;
import com.tkhospital.service.MemberService;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/member/*")
public class MemberController {


	ScriptUtils ScriptUtils = new ScriptUtils();
	
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
		//board/list.
	
	@RequestMapping("loginForm")
	public String loginForm(Model model,HttpServletResponse response) throws Exception {
		return "member/login";
	}
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String boardList(Model model,HttpServletResponse response,HttpServletRequest request,HttpSession session,MemberDTO DTO) throws Exception {
		MemberDTO loginDTO = service.memberLogin(DTO);
		if (loginDTO == null) {
		//ScriptUtils.alert(response, "로그인실패");
		} else {
		System.out.println("결과: " + loginDTO.getMid());
		//ScriptUtils.alert(response, "로그인성공");
		session.setAttribute("sid", loginDTO.getMid());
		System.out.println("세션값:"+session.getAttribute("sid"));
		return "redirect:../";
		}
		
		return "redirect:loginForm";
	}
	
	
	
	
	
	
	
}
