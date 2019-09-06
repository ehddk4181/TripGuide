package com.team.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.project.dao.MemberDAO;
import com.team.project.vo.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String selectOne(Member member, HttpSession hs){
		
		Member m = dao.selectOne(member);
		
		hs.setAttribute("loginId", m.getMemberId());
		
		return "redirect:/";
	}
}
