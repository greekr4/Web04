package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.ChatDTO;

@Repository
public class ChatDAOImpl implements ChatDAO {
	private static final String namespace = "com.tkhospital.ChatMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<ChatDTO> ChatList(ChatDTO DTO) {
		return sqlSession.selectList(namespace+".ChatList",DTO);
	}

	@Override
	public void ChatSend(ChatDTO DTO) throws Exception {
		sqlSession.insert(namespace+".ChatSend",DTO);
		
	}

}
