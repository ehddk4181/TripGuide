package com.team.project.inter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession hs = request.getSession();
		
		if(hs.getAttribute("loginId") == null){
			response.sendRedirect("/project/loginForm");
		}
		
		return super.preHandle(request, response, handler);
	}
	
	
}
