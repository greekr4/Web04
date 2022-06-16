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
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList(namespace + ".boardList");
	}

	@Override
	public BoardDTO boardRead(int no) throws Exception {
		return sqlSession.selectOne(namespace+".boardRead",no);
	}

	@Override
	public void boardWrite(BoardDTO DTO) throws Exception {
		sqlSession.insert(namespace+".boardWrite",DTO);
	}

	@Override
	public void boardUpdate(BoardDTO DTO) throws Exception {
		sqlSession.update(namespace+".boardUpdate",DTO);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		sqlSession.delete(namespace+".boardDelete",no);
	}

}
