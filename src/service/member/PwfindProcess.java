package service.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class PwfindProcess implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("PwfindProcess");
	 SecureRandom random = new SecureRandom();
	 String token =  new BigInteger(130, random).toString(32);
	 String id = request.getParameter("id");
	 PrintWriter out = response.getWriter();
	 MemberDao memberDao = MemberDao.getInstance();
	 int ri = memberDao.confirmId(id);
	if (ri == MemberDao.MEMBER_EXISTENT) {
	    MemberDto memberDto = new MemberDto();
	    memberDto.setId(id);
	    memberDto.setToken(token);
	    ri = memberDao.updateMemberToken(memberDto);
	    if (ri==MemberDao.MEMBER_INSERT_SUCCESS) {
		request.setAttribute("id", id);
		request.setAttribute("token", token);
		String url ="../member/naverMailSend.ss";
		request.getRequestDispatcher(url).forward(request, response);
	    } else {
		out.println("false");
	    }
	    return;
	} else {
	    out.println("false");
	    return;
	}
    }

}
