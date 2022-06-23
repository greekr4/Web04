package com.tkhospital.dao;

import java.util.List;

import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.CommentDTO;

public interface CommentDAO {
	public List<CommentDTO> CommentList(int bno) throws Exception;
	public void commentThumbUp(int cno) throws Exception;
	public void commentWrite(CommentDTO DTO) throws Exception;
	public void commentUpdate(CommentDTO DTO) throws Exception;
	public void commentDelete(int cno) throws Exception;
	
}
