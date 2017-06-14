package com.hb.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

public class MainCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
			return "/view/main.jsp";
	}

}
