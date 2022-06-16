package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.BoardDAO;
import com.tkhospital.dao.testDAO;
import com.tkhospital.dto.BoardDTO;
import com.tkhospital.dto.testDTO;
@Service
public class TestServiceImpl implements TestService {
	
	@Inject
	private testDAO dao;
	
	
	@Override
	public List<testDTO> selectTest() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectTest();
	}

	@Override
	public String Test2() throws Exception {
		// TODO Auto-generated method stub
		return dao.Test2();
	}

}
