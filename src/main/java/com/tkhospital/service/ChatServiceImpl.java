package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.ChatDAO;
import com.tkhospital.dto.ChatDTO;

@Service
public class ChatServiceImpl implements ChatService {
	@Inject
	private ChatDAO dao;
	
	
	
	@Override
	public List<ChatDTO> ChatList(ChatDTO DTO) throws Exception {
		return dao.ChatList(DTO);
	}



	@Override
	public void ChatSend(ChatDTO DTO) throws Exception {
		dao.ChatSend(DTO);
		
	}



	@Override
	public List<ChatDTO> ChatList_admin() throws Exception {
		return dao.ChatList_admin();
	}

}
