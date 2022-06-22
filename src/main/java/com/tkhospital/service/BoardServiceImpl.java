package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return dao.boardList();
	}

	@Override
	public BoardDTO boardRead(int no) throws Exception {
		return dao.boardRead(no);
	}
	
	@Override
	public void boardRead_viewed(int no) throws Exception {
		dao.boardRead_viewed(no);
	}

	@Override
	public int boardWrite(BoardDTO DTO) throws Exception {
		return dao.boardWrite(DTO);
	}

	@Override
	public void boardUpdate(BoardDTO DTO) throws Exception {
		dao.boardUpdate(DTO);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		dao.boardDelete(no);
	}

	@Override
	public void boardThumbUp(int no) throws Exception {
		dao.boardThumbUp(no);
	}



}
