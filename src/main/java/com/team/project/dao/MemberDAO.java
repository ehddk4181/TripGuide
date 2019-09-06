package com.team.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.project.vo.Member;

@Repository
public class MemberDAO implements MemberMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public Member selectOne(Member member) {
		// TODO Auto-generated method stub
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		return mapper.selectOne(member);
	}

}
