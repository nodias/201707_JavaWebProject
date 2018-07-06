package service.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class AdminMemberList   implements MovieR_ActionSS  {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : AdminMemberList");
	String url = "/member/adminMemberList.jsp";
	HttpSession session = request.getSession();
	if (!(session.getAttribute("id").equals("admin"))) {
	    url = "../index.ss"; 
	}
	MemberDao memberDao =  MemberDao.getInstance();
	ArrayList<MemberDto> arrayList =  memberDao.getList();
	
	request.setAttribute("arraylist", arrayList);
	request.getRequestDispatcher(url).forward(request, response);
    }
}
