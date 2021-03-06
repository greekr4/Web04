package com.tkhospital.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tkhospital.common.ScriptUtils;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.C_CommentDTO;
import com.tkhospital.dto.CommentDTO;
import com.tkhospital.service.BoardService;
import com.tkhospital.service.CommentService;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service2;
	
	@Inject
	private CommentService service3;
	
	@Inject
	private HttpServletResponse response;
	
	ScriptUtils ScriptUtils = new ScriptUtils();
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
		//board/list.
	
	@RequestMapping("list")
	public String boardList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList(1);
		model.addAttribute("list2",list);
		return "board/list"; //board/list.jsp
	}
	//notice 1
	@RequestMapping("notice")
	public String noticeList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList(1);
		for(int i=0;i<list.size();i++) {
		service2.replyUpdate(list.get(i).getNo());
		}
		model.addAttribute("list",list);
		return "board/notice";
	}
	
	//news 2
	@RequestMapping("news")
	public String newsList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList(2);
		for(int i=0;i<list.size();i++) {
		service2.replyUpdate(list.get(i).getNo());
		}
		model.addAttribute("list",list);
		return "board/news";
	}
	//free 3
	@RequestMapping("free")
	public String freeList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList(3);
		for(int i=0;i<list.size();i++) {
		service2.replyUpdate(list.get(i).getNo());
		}
		model.addAttribute("list",list);
		return "board/free";
	}
	
	//qna 4
	
	@RequestMapping("qna")
	public String qnaList(Model model,HttpServletResponse response) throws Exception {
		List<BoardDTO> list = service2.boardList(4);
		for(int i=0;i<list.size();i++) {
		service2.replyUpdate(list.get(i).getNo());
		}
		model.addAttribute("list",list);
		return "board/qna";
	}
	
	@RequestMapping("notice_search")
	public String noticeList_search(Model model,HttpServletResponse response,BoardDTO DTO,@RequestParam int search_type) throws Exception {
		DTO.setSearch("%"+DTO.getSearch()+"%");
		List<BoardDTO> list = null;
		if (search_type == 1) {
			//??????
			list = service2.boardList_search_tit(DTO);
		}else if(search_type ==2) {
			//??????
			list = service2.boardList_search_con(DTO);
		}else {
			list = service2.boardList_search_all(DTO);
		}
		model.addAttribute("list",list);
		return "board/notice";
	}
	
	@RequestMapping("news_search")
	public String newsList_search(Model model,HttpServletResponse response,BoardDTO DTO,@RequestParam int search_type) throws Exception {
		DTO.setSearch("%"+DTO.getSearch()+"%");
		List<BoardDTO> list = null;
		if (search_type == 1) {
			//??????
			list = service2.boardList_search_tit(DTO);
		}else if(search_type ==2) {
			//??????
			list = service2.boardList_search_con(DTO);
		}else {
			list = service2.boardList_search_all(DTO);
		}
		model.addAttribute("list",list);
		return "board/news";
	}
	
	@RequestMapping("free_search")
	public String freeList_search(Model model,HttpServletResponse response,BoardDTO DTO,@RequestParam int search_type) throws Exception {
		DTO.setSearch("%"+DTO.getSearch()+"%");
		List<BoardDTO> list = null;
		if (search_type == 1) {
			//??????
			list = service2.boardList_search_tit(DTO);
		}else if(search_type ==2) {
			//??????
			list = service2.boardList_search_con(DTO);
		}else {
			list = service2.boardList_search_all(DTO);
		}
		model.addAttribute("list",list);
		return "board/free";
	}
	
	@RequestMapping("qna_search")
	public String qnaList_search(Model model,HttpServletResponse response,BoardDTO DTO,@RequestParam int search_type) throws Exception {
		DTO.setSearch("%"+DTO.getSearch()+"%");
		List<BoardDTO> list = null;
		if (search_type == 1) {
			//??????
			list = service2.boardList_search_tit(DTO);
		}else if(search_type ==2) {
			//??????
			list = service2.boardList_search_con(DTO);
		}else {
			list = service2.boardList_search_all(DTO);
		}
		model.addAttribute("list",list);
		return "board/qna";
	}
	
	
	
	
	@RequestMapping(value = "more",method = RequestMethod.GET)
	public String boardRead(Model model,@RequestParam int no) throws Exception {
		service2.boardRead_viewed(no);
		service2.replyUpdate(no);
		ArrayList<Integer> commentIndex = new ArrayList<Integer>();
		ArrayList<List<C_CommentDTO>> c_cListbox = new ArrayList<List<C_CommentDTO>>();
		List<CommentDTO> commentList = service3.CommentList(no);
		
		for(int i=0;i<commentList.size();i++) {
			commentIndex.add(commentList.get(i).getCno());
		}
		for(int i=0;i<commentIndex.size();i++) {
			c_cListbox.add(service3.C_CommentList(commentIndex.get(i)));
		}
		
		
		
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		model.addAttribute("commentList",commentList);
		if(c_cListbox.size()>0) {
		model.addAttribute("c_cListbox",c_cListbox);
		}
		return "board/more";
	}
	
	@RequestMapping(value = "more_qna",method = RequestMethod.GET)
	public String boardRead_qna(Model model,@RequestParam int no) throws Exception {
		service2.boardRead_viewed(no);
		service2.replyUpdate(no);
		ArrayList<Integer> commentIndex = new ArrayList<Integer>();
		ArrayList<List<C_CommentDTO>> c_cListbox = new ArrayList<List<C_CommentDTO>>();
		List<CommentDTO> commentList = service3.CommentList(no);
		
		for(int i=0;i<commentList.size();i++) {
			commentIndex.add(commentList.get(i).getCno());
		}
		for(int i=0;i<commentIndex.size();i++) {
			c_cListbox.add(service3.C_CommentList(commentIndex.get(i)));
		}
		
		
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		model.addAttribute("commentList",commentList);
		if(c_cListbox.size()>0) {
		model.addAttribute("c_cListbox",c_cListbox);
		}
		
		return "board/more_qna";
	}
	
	@RequestMapping(value = "more_test",method = RequestMethod.GET)
	public String boardRead_test(Model model,@RequestParam int no) throws Exception {
		service2.boardRead_viewed(no);
		ArrayList<Integer> commentIndex = new ArrayList<Integer>();
		ArrayList<List<C_CommentDTO>> c_cListbox = new ArrayList<List<C_CommentDTO>>();
		List<CommentDTO> commentList = service3.CommentList(no);
		
		for(int i=0;i<commentList.size();i++) {
			commentIndex.add(commentList.get(i).getCno());
		}
		for(int i=0;i<commentIndex.size();i++) {
			c_cListbox.add(service3.C_CommentList(commentIndex.get(i)));
		}
		
		
		BoardDTO DTO = service2.boardRead(no);
		model.addAttribute("DTO",DTO);
		model.addAttribute("commentList",commentList);
		if(c_cListbox.size()>0) {
		model.addAttribute("c_cListbox",c_cListbox);
		}
		
		return "board/more";
	}
	
	@RequestMapping(value = "thumbup",method = RequestMethod.GET)
	public void thumbup(Model model,@RequestParam int no,HttpServletResponse response) throws Exception {

		service2.boardThumbUp(no);

		ScriptUtils.alertAndClose(response, "?????????????????????");

	}
	
	
	
	
	@RequestMapping(value = "del",method = RequestMethod.GET)
	public String boardDelete(Model model,@RequestParam int no,@RequestParam int type) throws Exception {
		service2.boardDelete(no);
		if (type==1) {
			//????????????
			ScriptUtils.alertAndMovePage(response, "??????????????????.", "./notice");
		} else if(type==2){
			//??????
			ScriptUtils.alertAndMovePage(response, "??????????????????", "./news");
		} else if(type==3){
			//??????
			ScriptUtils.alertAndMovePage(response, "??????????????????", "./free");
		} else if(type==4){
			//qna
			ScriptUtils.alertAndMovePage(response, "???????????????", "./qna");
		}
		return "redirect:.board/list";
	}
	
	@RequestMapping("WriteForm")
	public String boardaddForm(Model model,@RequestParam int type) throws Exception {
		model.addAttribute("type", type);
		return "board/BoardWriteForm"; //board/list.jsp
	}
	
	@RequestMapping(value = "Write",method = RequestMethod.POST)
	public String boardWrite(Model model,BoardDTO DTO,HttpServletResponse response) throws Exception {
		service2.boardWrite(DTO);
		int type = DTO.getType();
		if (type==1) {
			//????????????
			ScriptUtils.alertAndMovePage(response, "???????????????", "./notice");
		} else if(type==2){
			//??????
			ScriptUtils.alertAndMovePage(response, "???????????????", "./news");
		} else if(type==3){
			//??????
			ScriptUtils.alertAndMovePage(response, "???????????????", "./free");
		} else if(type==4){
			//qna
			ScriptUtils.alertAndMovePage(response, "???????????????", "./qna");
		}

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
		ScriptUtils.alertAndBackPage(response, "????????????");
		return ""; 
	}
	
	//////////////??????
	
	@RequestMapping(value = "cthumbup",method = RequestMethod.GET)
	public void cthumbup(Model model,@RequestParam int cno,HttpServletResponse response) throws Exception {

		service3.commentThumbUp(cno);
		ScriptUtils.alertAndClose(response, "?????????????????????");

	}
	
	@RequestMapping(value = "cWrite",method = RequestMethod.POST)
	public String cWrite(Model model,CommentDTO DTO,HttpServletResponse response) throws Exception {
			service3.commentWrite(DTO);
			service2.replyUpdate(DTO.getBno());
			ScriptUtils.alertAndBackPage(response, "??????????????????");


		return "redirect:.board/list"; 
	}
	
	@RequestMapping(value = "cdel",method = RequestMethod.GET)
	public String cDelete(Model model,@RequestParam int cno,@RequestParam int no) throws Exception {
		service3.commentDelete(cno);
		service2.replyUpdate(no);
		ScriptUtils.alertAndClose(response, "?????????????????????.");
		return "redirect:.board/list";
	}
	
	
	@RequestMapping(value = "cUpdate",method = RequestMethod.POST)
	public String cDelete(Model model,CommentDTO DTO) throws Exception {
		service3.commentUpdate(DTO);
		ScriptUtils.alertAndBackPage(response, "??????.");
		return "redirect:.board/list";
	}
	
	
	
	
	
	//?????????
	
	@RequestMapping(value = "ccWrite",method = RequestMethod.POST)
	public String ccWrite(Model model,C_CommentDTO DTO,HttpServletResponse response) throws Exception {
			service3.C_ComentWrite(DTO);
			ScriptUtils.alertAndBackPage(response, "??????????????????");


		return "redirect:.board/list"; 
	}
	
	@RequestMapping(value = "ccdel",method = RequestMethod.GET)
	public String ccDelete(Model model,@RequestParam int ccno) throws Exception {
		service3.C_ComentDelete(ccno);
		ScriptUtils.alertAndClose(response, "?????????????????????.");
		return "redirect:.board/list";
	}
	
	@RequestMapping(value = "ccthumbup",method = RequestMethod.GET)
	public void ccthumbup(Model model,@RequestParam int ccno,HttpServletResponse response) throws Exception {

		service3.C_CommentThumbUp(ccno);
		ScriptUtils.alertAndClose(response, "?????????????????????");

	}

	
	
	
	
}
