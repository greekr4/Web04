package com.tkhospital.dao;

import java.util.List;

import com.tkhospital.dto.Data_BoardDTO;

public interface Data_BoardDAO {
	//글목록
	public List<Data_BoardDTO> boardList() throws Exception;
	
	//글 상세보기
	public Data_BoardDTO boardRead(int no) throws Exception;
	
	//글 쓰기
	public int boardWrite(Data_BoardDTO DTO) throws Exception;
	
	//글 수정
	public void boardUpdate(Data_BoardDTO DTO) throws Exception;
	
	//글 삭제
	public void boardDelete(int no) throws Exception;
	
}
