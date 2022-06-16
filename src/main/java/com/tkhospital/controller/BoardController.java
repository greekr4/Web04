package com.tkhospital.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
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
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service2;

	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
		//board/list
	@RequestMapping("list")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list2",list);
		return "board/list"; //board/list.jsp
	}
	
	@RequestMapping(value = "more",method = RequestMethod.GET)
	public String boardRead(Model model,@RequestParam int no) throws Exception {
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		return "board/more";
	}
	
	@RequestMapping(value = "del",method = RequestMethod.GET)
	public String boardDelete(Model model,@RequestParam int no) throws Exception {
		service2.boardDelete(no);
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list2",list);
		return "board/list";
	}
	
	@RequestMapping("addForm")
	public String boardaddForm(Model model) throws Exception {

		return "board/addForm"; //board/list.jsp
	}
	
	@RequestMapping(value = "Write",method = RequestMethod.POST)
	public String boardWrite(Model model,BoardDTO DTO) throws Exception {
		service2.boardWrite(DTO);
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list2",list);
		return "board/list"; 
	}
	
	@RequestMapping(value = "EditForm",method = RequestMethod.GET)
	public String boardEditForm(Model model,@RequestParam int no) throws Exception {
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		return "board/EditForm"; 
	}
	
	@RequestMapping(value = "Update",method = RequestMethod.POST)
	public String boardUpdate(Model model,BoardDTO DTO) throws Exception {
		service2.boardUpdate(DTO);
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list2",list);
		return "board/list"; 
	}
	
	
	
	
	
}
