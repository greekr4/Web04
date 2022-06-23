package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dto.BoardDTO;

public interface BoardService {
	//글목록
	public List<BoardDTO> boardList(int type) throws Exception;
	
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
	
	//써치
	public List<BoardDTO> boardList_search_tit(BoardDTO DTO) throws Exception;
	public List<BoardDTO> boardList_search_con(BoardDTO DTO) throws Exception;
	public List<BoardDTO> boardList_search_all(BoardDTO DTO) throws Exception;

	//댓글 수
	public void replyUpdate(int no) throws Exception;
	
}
