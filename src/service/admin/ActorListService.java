package service.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;

public class ActorListService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		AdminDAO adminDAO = AdminDAO.getInstance();
		ArrayList<Object> actorList = new ArrayList<Object>();
		int page = 1;
		int limit = 10;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int listcount = adminDAO.getListCount("actor");
		System.out.println("리스트카운트 감독은 : " + listcount);
		actorList = adminDAO.getDataList(page, limit, "actor");
		int maxpage = (int) ((double) listcount / limit + 0.95);
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endpage = startpage + 10 - 1;
		if (endpage > maxpage) {
			endpage = maxpage;
		}
		request.setAttribute("page", page);
		request.setAttribute("maxpage", maxpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("listcount", listcount);
		request.setAttribute("actorList", actorList);
		ActionCommand actionCommand = new ActionCommand();
		actionCommand.setRedirect(false);
		actionCommand.setPath("./admin/movie/actorList.jsp");
		System.out.println("리스트로가기 전...");
		return actionCommand;

	}

}