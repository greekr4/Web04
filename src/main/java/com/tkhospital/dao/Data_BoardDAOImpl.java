package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.Data_BoardDTO;

@Repository
public class Data_BoardDAOImpl implements Data_BoardDAO {
	private static final String namespace = "com.tkhospital.Data_boardMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<Data_BoardDTO> boardList() throws Exception {
		return sqlSession.selectList(namespace + ".boardList");
	}

	@Override
	public Data_BoardDTO boardRead(int no) throws Exception {
		return sqlSession.selectOne(namespace+".boardRead",no);
	}

	@Override
	public int boardWrite(Data_BoardDTO DTO) throws Exception {
		return sqlSession.insert(namespace+".boardWrite",DTO);
	}

	@Override
	public void boardUpdate(Data_BoardDTO DTO) throws Exception {
		sqlSession.update(namespace+".boardUpdate",DTO);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		sqlSession.delete(namespace+".boardDelete",no);
	}

}
