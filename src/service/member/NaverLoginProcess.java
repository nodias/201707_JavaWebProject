package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;
//회원가입된 이메일 인지 확인 후 가입되어있으면 세션생성(id,grade) 후 로그인,  아니면 회원가입
public class NaverLoginProcess implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int ri = 0;
	System.out.println("위치 : NaverLoginProcess");
	String url ="";
	MemberDao memberDao = MemberDao.getInstance();
	String id = request.getParameter("id");
	String name= request.getParameter("name");
	ri =memberDao.confirmId(id);
	if (ri==MemberDao.MEMBER_NONEXISTENT) {
	    request.setAttribute(id, "id");
	    request.setAttribute(name, "name");
	    url ="../member/join.ss";
	    request.getRequestDispatcher(url).forward(request, response);
	} else if (ri == MemberDao.MEMBER_EXISTENT) {
	    HttpSession session = request.getSession();
	     MemberDto memberDto = memberDao.getMember(id);
	     session.setAttribute("id", id);
	     session.setAttribute("name", memberDto.getName());
	     session.setAttribute("grade", memberDto.getGrade());
	     url = "../index.ss";        
	     response.sendRedirect(url);
	}
	
    }
  
}
