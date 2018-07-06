package service.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;
import dao.MemberDao;
import dto.MemberDto;

public class UserConfProcess  implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("위치 : UserConfProcess");
	String msg = "설정이 적용되었습니다.";
	msg= "b";
//	String url = "";
	MemberDao memberDao = MemberDao.getInstance();
	MemberDto memberDto = new MemberDto();

	HttpSession session = request.getSession();
	String id = (String) session.getAttribute("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String new_pw = request.getParameter("new_pw");
	System.out.println(id+":"+name+":"+pw+":"+new_pw);
	memberDto.setId(id);
	memberDto.setName(name);
	if (request.getParameter("pw")=="") { //닉네임만 변경 할때
	    System.out.println("if");
	    memberDao.updateMemberID(memberDto);
	    session.setAttribute("name", name);
//	   url = "location.href='http://localhost:8081/MovieR/index.ss'";
	} else {
	    memberDto.setPw(new_pw); 
	     int ri = memberDao.userCheck(id, pw);
	     
        	     if (ri==MemberDao.MEMBER_LOGIN_SUCCESS) {
        		memberDao.updateMemberPW(memberDto);
        		session.setAttribute("name", name);
//        		url = "location.href='http://localhost:8081/MovieR/index.ss'";
        	    } else if (ri==MemberDao.MEMBER_PW_WRONG) {
        		msg = "a";
//        		msg = "현재 비밀번호가 틀립니다.";
        		    }
	}
//	System.out.println(msg);
	PrintWriter out = response.getWriter();
	out.print(msg);
//	    JSONObject json = new JSONObject();
//	    json.put("TEST", "11111");
//	    System.out.println(json);
//	    out.print(json);
//	    out.print(json.toString());
//	    out.flush();
//	    out.close();
	System.out.println("printWriter 직후 : name");
    }
}