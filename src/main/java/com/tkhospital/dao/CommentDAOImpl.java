package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.C_CommentDTO;
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

	
	//대댓글
	@Override
	public List<C_CommentDTO> C_CommentList(int cno) throws Exception {
		
		return sqlSession.selectList(namespace+".c_commentList",cno);
	}

	@Override
	public void C_ComentWrite(C_CommentDTO DTO) throws Exception {
		sqlSession.insert(namespace+".c_commentWrite",DTO);
		
	}

	@Override
	public void C_ComentDelete(int ccno) throws Exception {
		sqlSession.delete(namespace+".c_commentDelete",ccno);
		
	}

	@Override
	public void C_CommentThumbUp(int ccno) throws Exception {
		sqlSession.update(namespace+".c_commentThumbUp",ccno);
		
	}

}
