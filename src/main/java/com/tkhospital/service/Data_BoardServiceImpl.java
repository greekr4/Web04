package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.Data_BoardDAO;
import com.tkhospital.dto.Data_BoardDTO;

@Service
public class Data_BoardServiceImpl implements Data_BoardService {

	@Inject
	private Data_BoardDAO dao;
	
	@Override
	public List<Data_BoardDTO> boardList() throws Exception {
		return dao.boardList();
	}

	@Override
	public Data_BoardDTO boardRead(int no) throws Exception {
		return dao.boardRead(no);
	}

	@Override
	public int boardWrite(Data_BoardDTO DTO) throws Exception {
		return dao.boardWrite(DTO);
	}

	@Override
	public void boardUpdate(Data_BoardDTO DTO) throws Exception {
		dao.boardUpdate(DTO);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		dao.boardDelete(no);
	}

	@Override
	public void boardRead_viewed(int no) throws Exception {
		dao.boardRead_viewed(no);
		
	}

	@Override
	public void boardThumbUp(int no) throws Exception {
		dao.boardThumbUp(no);
		
	}

}
