package com.tkhospital.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tkhospital.common.ScriptUtils;
import com.tkhospital.dto.ChatDTO;
import com.tkhospital.service.ChatService;


/**
 * Handles requests for the application home page.
 */



@Controller
@RequestMapping("/chat/*")
public class ChatController {

	
	@Inject
	HttpServletResponse response;

	ScriptUtils ScriptUtils = new ScriptUtils();
	
	@Inject
	private ChatService service;
	
	private static final Logger logger = LoggerFactory.getLogger(ChatController.class);
	
		//board/list.
	
	
	@RequestMapping("/test")
	public String test(Model model,HttpServletResponse response) throws Exception {

		return "chat/test";
	}
	
	@RequestMapping("/test2")
	public String test2(Model model,HttpServletResponse response) throws Exception {

		return "chat/test2";
	}
	
	
	@ResponseBody
	@RequestMapping("json")
	public JSONObject json(Model model,HttpServletResponse response,ChatDTO DTO,@RequestParam String reqid) throws Exception {
		DTO.setSendid(reqid);
		DTO.setReqid(reqid);
		List<ChatDTO> list = service.ChatList(DTO);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Chatlist", list);
		JSONObject json = new JSONObject();
		json.putAll(map);
		
		return json;
	}
	
	@RequestMapping(value = "send")
	public String ChatSend(ChatDTO DTO) throws Exception {
		service.ChatSend(DTO);
		
		return "redirect:../";
	}
	
	@RequestMapping(value = "send2")
	public String ChatSend2(ChatDTO DTO) throws Exception {
		service.ChatSend(DTO);
		
		return "redirect:./test2";
	}

	
	
	
	
	
	
	
}
