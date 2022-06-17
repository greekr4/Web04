package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO memberLogin(MemberDTO DTO) throws Exception;
}
