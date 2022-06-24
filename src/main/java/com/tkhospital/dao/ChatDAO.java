package com.tkhospital.dao;

import java.util.List;

import com.tkhospital.dto.ChatDTO;

public interface ChatDAO {
	public List<ChatDTO> ChatList(ChatDTO DTO) throws Exception;
	public void ChatSend(ChatDTO DTO) throws Exception;
	
}
