package com.hb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Command;
import com.hb.model.JoinCommand;
import com.hb.model.LoginCommand;
import com.hb.model.MainCommand;
import com.hb.model.StartCommand;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String type = request.getParameter("type");
		Command comm = null;
		
		if(type.equals("start")){
			comm = new StartCommand();
		}else if(type.equals("login")){
			comm = new LoginCommand();
		}else if(type.equals("join")){
			comm = new JoinCommand();
		}else if(type.equals("main")){
			comm = new MainCommand();
		}
		
		String path = comm.exec(request, response);
		//out.print(path);
		request.getRequestDispatcher(path).forward(request, response);
			
	}

}
