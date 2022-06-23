package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dto.CommentDTO;

public interface CommentService {
	public List<CommentDTO> CommentList(int bno) throws Exception;
	public void commentThumbUp(int cno) throws Exception;
	public void commentWrite(CommentDTO DTO) throws Exception;
	public void commentUpdate(CommentDTO DTO) throws Exception;
	public void commentDelete(int cno) throws Exception;
}
