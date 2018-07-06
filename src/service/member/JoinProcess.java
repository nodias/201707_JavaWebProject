package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class JoinProcess implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : JoinProcess");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name= request.getParameter("name");
	String img= request.getParameter("img");
	String reg_date= request.getParameter("reg_date");
	String mod_date= request.getParameter("mod_date");
	String grade= request.getParameter("grade");
	MemberDto memberDto = new MemberDto();
	memberDto.setId(id);
	memberDto.setPw(pw);
	memberDto.setName(name);
	memberDto.setImg(img);
	memberDto.setReg_date(reg_date);
	memberDto.setMod_date(mod_date);
	memberDto.setGrade(grade);
	MemberDao memberDao = MemberDao.getInstance();
	int result = memberDao.insertMember(memberDto);
	String url = null;
	if (result == MemberDao.MEMBER_JOIN_FAIL) {
	    url = "../member/join.ss";
	} else if (result == MemberDao.MEMBER_JOIN_SUCCESS) {
	    url = "../member/login.ss";
	}
	System.out.println("joinprocess url : " + url);
	response.sendRedirect(url);
    }

}
