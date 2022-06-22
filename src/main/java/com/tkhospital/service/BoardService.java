package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dto.BoardDTO;

public interface BoardService {
	//글목록
	public List<BoardDTO> boardList() throws Exception;
	
	//글 상세보기
	public BoardDTO boardRead(int no) throws Exception;
	
	public void boardRead_viewed(int no) throws Exception;
	public void boardThumbUp(int no) throws Exception;
	
	//글 쓰기
	public int boardWrite(BoardDTO DTO) throws Exception;
	
	//글 수정
	public void boardUpdate(BoardDTO DTO) throws Exception;
	
	//글 삭제
	public void boardDelete(int no) throws Exception;
	
}
