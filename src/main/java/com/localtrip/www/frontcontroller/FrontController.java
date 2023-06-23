package com.localtrip.www.frontcontroller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.localtrip.www.command.Command;
import com.localtrip.www.command.member.LoginCommand;
import com.localtrip.www.command.member.MemberRegisterOKCommand;
import com.localtrip.www.command.member.IDCheckCommand;
import com.localtrip.www.command.member.MemberModifyOKCommand;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		System.out.println("requestURI" + requestURI);
		
		String commandName = request.getServletPath();
		System.out.println("requestPath" + commandName);
		
		String viewPage = null;
		Command command = null;
		PrintWriter out = null;
		int flag = 0;

		if(commandName.equals("/member/login.do")) {
		viewPage = "login.jsp";
		} else if(commandName.equals("/member/loginOK.do")) {
			command = new LoginCommand();
			command.excute(request, response);
			viewPage = "../index.jsp";
		} else if(commandName.equals("/member/memberRegister.do")) {
			viewPage = "memberRegister.jsp";
		} else if(commandName.equals("/member/memberRegisterOK.do")) {
			command = new MemberRegisterOKCommand();
			command.excute(request, response);
			viewPage = "login.jsp";
		} else if(commandName.equals("/member/memberModify.do")) {
			viewPage = "memberModify.jsp";
		} else if(commandName.equals("/member/memberModifyOK.do")) {
			command = new MemberModifyOKCommand();
			command.excute(request, response);
			viewPage = "../index.jsp";
		} else if(commandName.equals("/logout.do")) {
			request.getSession().invalidate();
			viewPage = "index.jsp";
		}
		
		else if(commandName.equals("/member/idCheck.do")) {
			System.out.println("idCheck.do");
			command = new IDCheckCommand();
			command.excute(request, response);
			out = response.getWriter();
//			System.out.println("result " + request.getAttribute("result"));
			out.write(request.getAttribute("result") + "");
			flag = 2;
		}
		
		
		if(flag==0) {
			response.sendRedirect(viewPage);
		} else if(flag==1) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);			
		}	
	}
}
