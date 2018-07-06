package service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.MovieR_ActionSS;

public class Index implements MovieR_ActionSS{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("위치 : Index");
	String url ="/index.jsp";
	 String id = null;
	 HttpSession session = request.getSession();
	    if (session.getAttribute("id") != null) {
			id = (String) session.getAttribute("id");
			request.setAttribute("id", id);
	    } 
	    else {
		System.out.println("위치 : else");
	    }
	
	request.getRequestDispatcher(url).forward(request, response);
	
    }

}
