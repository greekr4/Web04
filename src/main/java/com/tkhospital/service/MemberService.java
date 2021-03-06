package com.tkhospital.service;

import java.util.List;

import com.tkhospital.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO memberLogin(MemberDTO DTO) throws Exception;
	public void memberCreate(MemberDTO DTO) throws Exception;
	public int memberIDCK(String mid) throws Exception;
	public void memberUpdate(MemberDTO DTO) throws Exception;
	public void memberDelete(String mid) throws Exception;
}
