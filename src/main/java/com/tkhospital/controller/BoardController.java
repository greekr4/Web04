package com.tkhospital.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tkhospital.common.ScriptUtils;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.service.BoardService;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service2;
	
	ScriptUtils ScriptUtils = new ScriptUtils();
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
		//board/list.
	
	@RequestMapping("list")
	public String boardList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list2",list);
		return "board/list"; //board/list.jsp
	}
	
	@RequestMapping("notice")
	public String noticeList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list",list);
		return "board/notice";
	}
	
	@RequestMapping("free")
	public String freeList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list",list);
		return "board/free";
	}
	
	@RequestMapping("news")
	public String newsList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList();
		model.addAttribute("list",list);
		return "board/news";
	}
	
	
	
	@RequestMapping(value = "more",method = RequestMethod.GET)
	public String boardRead(Model model,@RequestParam int no) throws Exception {
		BoardDTO DTO = service2.boardRead(no);
		service2.boardRead_viewed(no);
		model.addAttribute("DTO",DTO);
		return "board/more";
	}
	
	@RequestMapping(value = "thumbup",method = RequestMethod.GET)
	public void thumbup(Model model,@RequestParam int no,HttpServletResponse response) throws Exception {

		service2.boardThumbUp(no);
		ScriptUtils.alertAndClose(response, "추천하셨습니다");


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
	public String boardWrite(Model model,BoardDTO DTO,HttpServletResponse response) throws Exception {
		service2.boardWrite(DTO);
		ScriptUtils.alertAndMovePage(response, "글쓰기성공", "./list");
//		List<BoardDTO> list = service2.boardList();
//		model.addAttribute("list2",list);
		return "redirect:.board/list"; 
	}
	
	@RequestMapping(value = "EditForm",method = RequestMethod.GET)
	public String boardEditForm(Model model,@RequestParam int no) throws Exception {
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		return "board/EditForm"; 
	}
	
	@RequestMapping(value = "Update",method = RequestMethod.POST)
	public String boardUpdate(Model model,BoardDTO DTO,HttpServletResponse response ) throws Exception {
		
		service2.boardUpdate(DTO);
		ScriptUtils.alertAndBackPage(response, "수정완료");
		return ""; 
	}
	
	
	
	
	
}
