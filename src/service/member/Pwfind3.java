package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;

public class Pwfind3 implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : Pwfind3");
	String url ="../member/pwfind3.jsp";
	request.getRequestDispatcher(url).forward(request, response);
    }

}
