package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;
import dao.MemberDao;

public class Withdraw  implements MovieR_ActionSS {
    //탈퇴
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : Withdraw");
	String url = "../index.ss";
	String id = request.getParameter("id");
	MemberDao memberDao = MemberDao.getInstance();
	memberDao.deleteMember(id);
	HttpSession session = request.getSession();
	session.invalidate();
	response.sendRedirect(url);
    }

}