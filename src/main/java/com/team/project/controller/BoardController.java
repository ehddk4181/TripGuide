package com.team.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.project.dao.BoardDAO;
import com.team.project.vo.Board;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping(value = "/selectAll", method={RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<Board> selectAll(Board board, HttpSession hs){
		board.setMemberId((String) hs.getAttribute("loginId"));
		System.out.println(board);
		List<Board>blist = dao.selectAll(board);
		System.out.println("board"+blist);
		return blist;
	}
}
