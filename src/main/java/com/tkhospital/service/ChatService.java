package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.ChatDTO;

public interface ChatService {
	public List<ChatDTO> ChatList(ChatDTO DTO) throws Exception;
	public void ChatSend(ChatDTO DTO) throws Exception;
	
}
