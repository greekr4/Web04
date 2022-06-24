package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.ChatDTO;

public interface ChatService {
	
	//채팅내용 불러오기
	public List<ChatDTO> ChatList(ChatDTO DTO) throws Exception;
	
	//채팅관리 불러오기
	public List<ChatDTO> ChatList_admin() throws Exception;
	
	//채팅 보내기
	public void ChatSend(ChatDTO DTO) throws Exception;
	
}
