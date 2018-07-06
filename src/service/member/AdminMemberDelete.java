package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import dao.MemberDao;

public class AdminMemberDelete  implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : AdminMemberDelete");
	String url = "./adminMemberList.ss";
	String id = request.getParameter("id");
	MemberDao memberDao = MemberDao.getInstance();
	memberDao.deleteMember(id);
	System.out.println("joinprocess url : " + url);
	 request.getRequestDispatcher(url).forward(request, response);
    }

}