package com.team.project.dao;

import java.util.List;

import com.team.project.vo.Board;

public interface BoardMapper {
	public List<Board> selectAll(Board board);
}
