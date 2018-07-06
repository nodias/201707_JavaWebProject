package service.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;

public class MovieWriteService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AdminDAO adminDAO = AdminDAO.getInstance();
		ActionCommand actionCommand = new ActionCommand();
		ArrayList<Object> genreList = new ArrayList<Object>();
		ArrayList<Object> directorList = new ArrayList<Object>();
		ArrayList<Object> actorList = new ArrayList<Object>();
		
		//리스트 다 불러 와야함
		genreList = adminDAO.getDataList_m("genre");
		directorList = adminDAO.getDataList_m("director");
		actorList = adminDAO.getDataList_m("actor");
		
		request.setAttribute("genreList", genreList);
		request.setAttribute("directorList", directorList);
		request.setAttribute("actorList", actorList);
		
		
		
		actionCommand.setRedirect(false);
		actionCommand.setPath("./admin/movie/movie_write.jsp");
		
		
		
		return actionCommand;
	}
}
