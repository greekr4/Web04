package com.tkhospital.dao;

import java.util.List;

import com.tkhospital.dto.ChatDTO;

public interface ChatDAO {
	
	//채팅내용 불러오기
	public List<ChatDTO> ChatList(ChatDTO DTO) throws Exception;
	
	//채팅관리 불러오기
	public List<ChatDTO> ChatList_admin() throws Exception;
	
	//채팅 보내기
	public void ChatSend(ChatDTO DTO) throws Exception;
	
}
