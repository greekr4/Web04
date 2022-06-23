package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dto.C_CommentDTO;
import com.tkhospital.dto.CommentDTO;

public interface CommentService {
	public List<CommentDTO> CommentList(int bno) throws Exception;
	public void commentThumbUp(int cno) throws Exception;
	public void commentWrite(CommentDTO DTO) throws Exception;
	public void commentUpdate(CommentDTO DTO) throws Exception;
	public void commentDelete(int cno) throws Exception;
	
	//대댓글
	public List<C_CommentDTO> C_CommentList(int cno) throws Exception;
	public void C_ComentWrite(C_CommentDTO DTO) throws Exception;
	public void C_ComentDelete(int ccno) throws Exception;
	public void C_CommentThumbUp(int ccno) throws Exception;
}
