package com.tkhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tkhospital.dao.MemberDAO;
import com.tkhospital.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return dao.memberList();
	}


	@Override
	public MemberDTO memberLogin(MemberDTO DTO) throws Exception {
		return dao.memberLogin(DTO);
	}



}