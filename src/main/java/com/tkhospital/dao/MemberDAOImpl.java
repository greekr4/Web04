package com.tkhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tkhospital.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private static final String namespace = "com.tkhospital.memberMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList(namespace+".memberList");
	}

	@Override
	public MemberDTO memberLogin(MemberDTO DTO) throws Exception {
		return sqlSession.selectOne(namespace+".memberLogin",DTO);
	}

}
