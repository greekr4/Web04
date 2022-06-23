package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dao.CommentDAO;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.C_CommentDTO;
import com.tkhospital.dto.CommentDTO;

@Service
public class CommentServiceImpl implements CommentService {

	@Inject
	private CommentDAO dao;

	@Override
	public List<CommentDTO> CommentList(int bno) throws Exception {
		return dao.CommentList(bno);
	}

	@Override
	public void commentThumbUp(int cno) throws Exception {
		dao.commentThumbUp(cno);
	}

	@Override
	public void commentWrite(CommentDTO DTO) throws Exception {
		dao.commentWrite(DTO);
	}

	@Override
	public void commentUpdate(CommentDTO DTO) throws Exception {
		dao.commentUpdate(DTO);
	}

	@Override
	public void commentDelete(int cno) throws Exception {
		dao.commentDelete(cno);
	}

	@Override
	public List<C_CommentDTO> C_CommentList(int cno) throws Exception {
		
		return dao.C_CommentList(cno);
	}

	@Override
	public void C_ComentWrite(C_CommentDTO DTO) throws Exception {
		dao.C_ComentWrite(DTO);
		
	}

	@Override
	public void C_ComentDelete(int ccno) throws Exception {
		dao.C_ComentDelete(ccno);
		
	}

	@Override
	public void C_CommentThumbUp(int ccno) throws Exception {
		dao.C_CommentThumbUp(ccno);
		
	}
	



}
