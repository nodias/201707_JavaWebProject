package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_ActionSS;
import service.member.AdminMemberDelete;
import service.member.AdminMemberInfo;
import service.member.AdminMemberList;
import service.member.ImageThum;
import service.member.Index;
import service.member.Join;
import service.member.JoinProcess;
import service.member.Login;
import service.member.LoginProcess;
import service.member.LogoutProcess;
import service.member.NaverLoginProcess;
import service.member.NaverMailSend;
import service.member.Pwfind1;
import service.member.Pwfind2;
import service.member.Pwfind3;
import service.member.PwfindProcess;
import service.member.PwfindProcess2;
import service.member.UserConfProcess;
import service.member.Withdraw;

@WebServlet("*.ss")
public class MovieRControllerSS extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	System.out.println("doGet");
	controller(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	System.out.println("doPost");
	controller(request, response);
    }

    private void controller(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	System.out.println("controller");

	MovieR_ActionSS movieR_ActionSS = null;

	String uri = request.getRequestURI();
	String conPath = request.getContextPath();
	String com = uri.substring(conPath.length());
	System.out.println("uri : " + uri);
	System.out.println("conPath : " + conPath);
	System.out.println("com : " + com);

	if (com.equals("/member/login.ss")) {
	    movieR_ActionSS = new Login();
	} else if (com.equals("/member/loginProcess.ss")) {
	    movieR_ActionSS = new LoginProcess();
	} else if (com.equals("/index.ss")) {
	    movieR_ActionSS = new Index();
	} else if (com.equals("/member/join.ss")) {
	    movieR_ActionSS = new Join();
	} else if (com.equals("/member/joinProcess.ss")) {
	    movieR_ActionSS = new JoinProcess();
	} else if (com.equals("/member/adminMemberList.ss")) {
	    movieR_ActionSS = new AdminMemberList();
	} else if (com.equals("/member/adminMemberDelete.ss")) {
	    movieR_ActionSS = new AdminMemberDelete();
	} else if (com.equals("/member/adminMemberInfo.ss")) {
	    movieR_ActionSS = new AdminMemberInfo();
	} else if (com.equals("/member/logoutProcess.ss")) {
	    movieR_ActionSS = new LogoutProcess();
	} else if (com.equals("/member/pwfind1.ss")) {
	    movieR_ActionSS = new Pwfind1();
	} else if (com.equals("/member/pwfind2.ss")) {
	    movieR_ActionSS = new Pwfind2();
	}else if (com.equals("/member/pwfind3.ss")) {
	    movieR_ActionSS = new Pwfind3();
	} else if (com.equals("/member/pwfindProcess.ss")) {
	    movieR_ActionSS = new PwfindProcess();
	} else if (com.equals("/member/naverMailSend.ss")) {
	    movieR_ActionSS = new NaverMailSend();
	} else if (com.equals("/member/userConfProcess.ss")) {
	    movieR_ActionSS = new UserConfProcess();
	} else if (com.equals("/member/naverLoginProcess.ss")) {
	    movieR_ActionSS = new NaverLoginProcess();
	} else if (com.equals("/member/withdraw.ss")) {
	    movieR_ActionSS = new Withdraw();
	} else if (com.equals("/member/imageThum.ss")) {
	    movieR_ActionSS = new ImageThum();
	} else if (com.equals("/member/pwfindProcess2.ss")) {
	    movieR_ActionSS = new PwfindProcess2();
	} else if (com.equals("/terms/pterms.ss")) {
	    request.getRequestDispatcher("./pterms.jsp").forward(request, response);
	    return;
	} else if (com.equals("/terms/rterms.ss")) {
	    request.getRequestDispatcher("./rterms.jsp").forward(request, response);
	    return;
	} 
	
	movieR_ActionSS.execute(request, response);
    }
}
