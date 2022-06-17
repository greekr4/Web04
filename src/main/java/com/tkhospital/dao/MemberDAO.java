package com.tkhospital.dao;

import java.util.List;

import com.tkhospital.dto.MemberDTO;

public interface MemberDAO {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO memberLogin(MemberDTO DTO) throws Exception;
}
