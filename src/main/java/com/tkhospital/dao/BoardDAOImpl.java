package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	private static final String namespace = "com.tkhospital.boardMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> boardList(int type) throws Exception {
		return sqlSession.selectList(namespace + ".boardList",type);
	}

	@Override
	public BoardDTO boardRead(int no) throws Exception {
		return sqlSession.selectOne(namespace+".boardRead",no);
	}
	
	@Override
	public void boardRead_viewed(int no) throws Exception {
		sqlSession.update(namespace+".boardRead_viewer",no);
	}

	@Override
	public int boardWrite(BoardDTO DTO) throws Exception {
		return sqlSession.insert(namespace+".boardWrite",DTO);
	}

	@Override
	public void boardUpdate(BoardDTO DTO) throws Exception {
		sqlSession.update(namespace+".boardUpdate",DTO);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		sqlSession.delete(namespace+".boardDelete",no);
	}

	@Override
	public void boardThumbUp(int no) throws Exception {
		sqlSession.update(namespace+".boardthumbUp",no);
		
	}

	@Override
	public List<BoardDTO> boardList_search_tit(BoardDTO DTO) throws Exception {
	
		return sqlSession.selectList(namespace+".boardList_search_tit",DTO);
	}

	@Override
	public List<BoardDTO> boardList_search_con(BoardDTO DTO) throws Exception {
		
		return sqlSession.selectList(namespace+".boardList_search_con",DTO);
	}

	@Override
	public List<BoardDTO> boardList_search_all(BoardDTO DTO) throws Exception {
		
		return sqlSession.selectList(namespace+".boardList_search_all",DTO);
	}

	@Override
	public void replyUpdate(int no) throws Exception {
		sqlSession.update(namespace+".reply_update",no);
		
	}
	



}
