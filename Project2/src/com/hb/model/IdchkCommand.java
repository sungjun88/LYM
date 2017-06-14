package com.hb.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.mybatis.DAO;

public class IdchkCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String res = DAO.getIdchk(id);
		
		if(res.equals("join")){
			res = "<input type='text' name='email'  placeholder='EMAIL' id='email'/><br />"
					+ "<br /><input type='button'  name='join'  value='JOIN' onclick='join_go(this.form)' id='join' "
					+ "style='background-color: white; vertical-align: center; color: black' />";
		}else if(res.equals("login")){
			res = "<input type='button' name='login'  value='LOG-IN' onclick='login_go(this.form)' id='login' "
					+ "style='background-color: white; vertical-align: center; color: black' />";
		}
			
		return res;
	}

}
