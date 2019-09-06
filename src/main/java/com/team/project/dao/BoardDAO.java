package com.team.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.project.vo.Board;

@Repository
public class BoardDAO implements BoardMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Board> selectAll(Board board) {
		// TODO Auto-generated method stub
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		return mapper.selectAll(board);
	}

}
