package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;


public class LoginProcess implements MovieR_ActionSS{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	String msg = null;
	String url = "../member/login.ss";       
	MemberDao memberDao  = MemberDao.getInstance();
	 int result = memberDao.userCheck(id, pass);
	 System.out.println("로그인 결과 : " + result);
	if (result == MemberDao.MEMBER_LOGIN_FAIL) {
	   msg = "아이디를 확인하세요.";   
	} else if (result == MemberDao.MEMBER_PW_WRONG) {
	   msg =  "비밀번호를 확인하세요.";     
	}else if (result == MemberDao.MEMBER_LOGIN_SUCCESS) {
	     HttpSession session = request.getSession();
	     MemberDto memberDto = memberDao.getMember(id);
	     session.setAttribute("id", id);
	     session.setAttribute("name", memberDto.getName());
	     session.setAttribute("grade", memberDto.getGrade());
	     url = "../index.ss";        
	     System.out.println(url);
	     response.sendRedirect(url);
	     return;
	}
	System.out.println(url);
	 request.setAttribute("msg", msg);
	 request.getRequestDispatcher(url).forward(request, response);;
//	    response.sendRedirect(url);
    }
}
