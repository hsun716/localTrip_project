package com.localtrip.www.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.localtrip.www.command.Command;
import com.localtrip.www.dao.MemberDAO;
import com.localtrip.www.dto.MemberDTO;

public class MemberModifyOKCommand implements Command{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getMemberDAO();
		MemberDTO dto = new MemberDTO();
		HttpSession session = request.getSession();
		
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setName(request.getParameter("name"));
		dto.setBirth(request.getParameter("birth"));
		dto.setPhoneNum(request.getParameter("phoneNum"));
		dto.setGender(request.getParameter("gender"));
		dao.memberModifyDAO(dto);
		
		session.setAttribute("userInfo", dto);
	}
	
}
