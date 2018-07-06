package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class AdminMemberInfo   implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : adminMemberInfo");
	String url = "./adminMemberInfo.jsp";
	String id = request.getParameter("id");
	System.out.println("위치 : JoinProcess");
	MemberDao memberDao = MemberDao.getInstance();
	MemberDto memberDto = memberDao.getMember(id);
	System.out.println("joinprocess url : " + url);
	request.setAttribute("dto",memberDto);
	 request.getRequestDispatcher(url).forward(request, response);
    }
}