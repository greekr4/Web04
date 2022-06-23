package com.tkhospital.myapp;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.MemberDTO;
import com.tkhospital.dto.testDTO;
import com.tkhospital.service.BoardService;
import com.tkhospital.service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@Inject
	private BoardService service;

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {

		
		List<BoardDTO> list = service.boardList(1);		//공지사항
		List<BoardDTO> list2 = service.boardList(2);	//뉴스
		
		model.addAttribute("list",list);
		model.addAttribute("list2",list2);
		return "home";
	}
	
	@RequestMapping(value = "test",method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("테스트페이지");
		model.addAttribute("msg","테스트");
		return "test";
	}
	
	@RequestMapping(value = "map",method = RequestMethod.GET)
	public ModelAndView test2(Locale locale, Model model) {
		logger.info("맵테스트페이지");
		HashMap<String,String> map = new HashMap<String, String>();
		map.put("조재영", "바보");
		map.put("김동협", "바보2");
		return new ModelAndView("maptest","map",map);
	}
	
	@RequestMapping(value = "doC",method = RequestMethod.GET)
	public ModelAndView doC(Locale locale, Model model) {
		logger.info("리스트테스트");
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		MemberDTO DTO = new MemberDTO();
		MemberDTO DTO2 = new MemberDTO();
		DTO.setMid("idididid");
		DTO.setMpw("PWPWPWPW");
		list.add(DTO);
		DTO2.setMid("idididid2");
		DTO2.setMpw("PWPWPWPW2");
		list.add(DTO2);
		return new ModelAndView("listtest","list",list);
	}
	
	@RequestMapping(value = "doD",method = RequestMethod.GET)
	public String doD(Locale locale, Model model) {
		//해당 url로 자동포워딩후 이동됨
		return "redirect:/doD";
	}
	
	@RequestMapping("sub1")
	public String sub1(Model model) {
		return "sub1";
	}
	@RequestMapping("sub2")
	public String sub2(Model model) {
		return "sub2";
	}
	@RequestMapping("sub3")
	public String sub3(Model model) {
		return "sub3";
	}
	@RequestMapping("sub4")
	public String sub4(Model model) {
		return "sub4";
	}
	@RequestMapping("sub5")
	public String sub5(Model model) {
		return "sub5";
	}
	@RequestMapping("sub6")
	public String sub6(Model model) {
		return "sub6";
	}
	@RequestMapping("sub7")
	public String sub7(Model model) {
		return "sub7";
	}
	
}
