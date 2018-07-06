package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class PwfindProcess2 implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("id");
	String token = request.getParameter("token");
	String pw = request.getParameter("pw");
	String url = "";
	MemberDao memberDao = MemberDao.getInstance();
	int ri =memberDao.updateMemberConfirm(id,token);
	System.out.println("PwfindProcess2 : "+token);
	if (ri == MemberDao.CONFIRM_TOKEN_SUCCESS) {
	    MemberDto memberDto = new MemberDto();
	    memberDto.setId(id);
	    memberDto.setPw(pw);
	    ri = memberDao.updateMemberPWC(memberDto);
	    if (ri==memberDao.MEMBER_INSERT_SUCCESS) {
		url = "../member/login.ss";
	    response.sendRedirect(url);
	    } else {
		System.out.println("뭔가 문제가 생김111");
		
	    }
	} else {
	    System.out.println("뭔가 문제가 생김222");
	}
    }

}
