package com.tkhospital.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tkhospital.common.ScriptUtils;
import com.tkhospital.dto.MemberDTO;
import com.tkhospital.service.MemberService;

import oracle.net.aso.b;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Inject
	BCryptPasswordEncoder pwdEncoder;
	

	ScriptUtils ScriptUtils = new ScriptUtils();
	
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
		//board/list.
	
	@RequestMapping("loginForm")
	public String loginForm(Model model,HttpServletResponse response) throws Exception {
		return "member/loginForm";
	}
	
	@RequestMapping("agreement")
	public String agreement(Model model,HttpServletResponse response) throws Exception {
		return "member/agreement";
	}
	
	@RequestMapping("joinForm")
	public String joinForm(Model model,HttpServletResponse response) throws Exception {
		return "member/joinForm";
	}
	
	@RequestMapping("IDCK")
	public void IDCK(Model model,HttpServletResponse response,String mid) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; utf-8");
		PrintWriter out = response.getWriter();
		int ck = service.memberIDCK(mid);
		if (ck == 0) {
		out.println("<style>body{text-align:center}</style><br><p>"+mid + "는 사용 가능합니다.</p><br><br>"
				+ "<button onclick='"
				+ "opener.document.getElementById(\"mid\").readOnly = true;"
				+ "window.close();"
				+ "'>사용하기</button> &nbsp;&nbsp;&nbsp;"
				+ "<button onclick='"
				+ "opener.document.getElementById(\"mid\").readOnly = false;"
				+ "window.close();"
				+ "'>다시입력</button>");
		} else {
			out.println("<style>body{text-align:center}</style><br><p style='color:red;'>"+mid + "는 사용 불가능합니다.</p><br><br>"
					+ "<button onclick='"
					+ "opener.document.getElementById(\"mid\").readOnly = false;"
					+ "window.close();"
					+ "'>다시입력</button>");
		}
	}
	
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String boardList(Model model,HttpServletResponse response,HttpServletRequest request,HttpSession session,MemberDTO DTO) throws Exception {
		boolean pwdmatch = false;
		MemberDTO loginDTO = service.memberLogin(DTO);
		if (loginDTO != null) { 
		pwdmatch = pwdEncoder.matches(DTO.getMpw(), loginDTO.getMpw());
		if (pwdmatch == false || DTO == null) {
		//ScriptUtils.alert(response, "로그인실패");
		} else {
		System.out.println("결과: " + loginDTO.getMid());
		//ScriptUtils.alert(response, "로그인성공");
		session.setAttribute("sid", loginDTO.getMid());
		System.out.println("세션값:"+session.getAttribute("sid"));
		return "redirect:../";
		}
		}
		
		return "redirect:loginForm";
	}
	
	@RequestMapping(value = "join",method = RequestMethod.POST)
	public void join(Model model,HttpServletResponse response,HttpServletRequest request,HttpSession session,MemberDTO DTO) throws Exception {
		String addr1 = request.getParameter("maddress");
		String addr2 = request.getParameter("maddress2");
		String addr3 = addr1+" "+addr2;
		DTO.setMpw(pwdEncoder.encode(DTO.getMpw()));
		DTO.setMaddress(addr3);
		service.memberCreate(DTO);
	}
	
	@RequestMapping("logout")
	public String logout(HttpServletResponse response,HttpServletRequest request,HttpSession session){
		session.invalidate();
		return "redirect:../";
		
	}
	
	@RequestMapping("memberlist")
	public String list(Model model) throws Exception {
		List<MemberDTO> list = service.memberList();
		model.addAttribute("list",list);
		return "member/memberlist";
	}
	
	@RequestMapping("updateForm")
	public String updateForm(Model model, MemberDTO DTO) throws Exception {
		MemberDTO memberDTO = service.memberLogin(DTO);
		model.addAttribute("DTO",memberDTO);
		return "member/updateForm";
	}
	
	@RequestMapping(value = "update",method = RequestMethod.POST)
	public String update(Model model, MemberDTO DTO,HttpServletRequest request) throws Exception {
		String addr1 = request.getParameter("maddress");
		String addr2 = request.getParameter("maddress2");
		String addr3 = addr1+" "+addr2;
		DTO.setMpw(pwdEncoder.encode(DTO.getMpw()));
		System.out.println("zzzz"+DTO.getMpw());
		DTO.setMaddress(addr3);
		service.memberUpdate(DTO);
		return "redirect:../";
	}
	
	
	
	
	
	
	
	
}
