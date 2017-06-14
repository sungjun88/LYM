package com.hb.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

public class JoinCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd")); 
		vo.setEmail(request.getParameter("email")); 
		
		System.out.println(vo);
		int res = DAO.getJoin(vo);
		if(res == 1){
			return "Controller?type=login";
		}else{
			return "view/loginfail.jsp";
		}
		
		
	}

}
