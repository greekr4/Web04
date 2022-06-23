package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.CommentDTO;

@Repository
public class CommentDAOImpl implements CommentDAO {
	private static final String namespace = "com.tkhospital.commentMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	
	@Override
	public List<CommentDTO> CommentList(int bno) throws Exception {
		return sqlSession.selectList(namespace+".commentList",bno);
	}

	@Override
	public void commentThumbUp(int cno) throws Exception {
		sqlSession.update(namespace+".commentThumbUp",cno);

	}

	@Override
	public void commentWrite(CommentDTO DTO) throws Exception {
		sqlSession.insert(namespace+".commentWrite",DTO);

	}

	@Override
	public void commentUpdate(CommentDTO DTO) throws Exception {
		sqlSession.update(namespace+".commentUpdate",DTO);

	}

	@Override
	public void commentDelete(int cno) throws Exception {
		sqlSession.delete(namespace+".commentDelete",cno);

	}

}
