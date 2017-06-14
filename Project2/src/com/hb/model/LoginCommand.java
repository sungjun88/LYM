package com.hb.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

public class LoginCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		VO vo = new VO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd")); 
		
		System.out.println(vo);
		VO vo2 = DAO.getLogin(vo);
		if(vo2!=null){
			request.getSession().setAttribute("vo", vo2); 
			return "view/list.jsp";
		}else{
			return "view/loginfail.jsp";
		}
		
		
		/*if(vo2 != null){
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo2);
			System.out.println(11);
			return "view/list.jsp";
		}else{
			System.out.println(12);
		    return "view/loginfail.jsp";
		}*/
	}

}
