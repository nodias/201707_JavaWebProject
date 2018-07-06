package service.movie;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;
import dto.GenreDTO;

public class MovieEvalMoreService implements MovieR_Action {

	
	//평가늘리기 하는 부분...
	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		AdminDAO adminDAO = AdminDAO.getInstance();
		

		ArrayList<GenreDTO> genreList = new ArrayList<GenreDTO>();
		
		//모든 장르들의 정보
		genreList = adminDAO.getGenreList();

		request.setAttribute("genreList", genreList);
		
	
		String id = "admin";
		
		ActionCommand actionCommand = new ActionCommand();
		
		actionCommand.setRedirect(false);
	
		actionCommand.setPath("../movie/evalmore.jsp");
		
		return actionCommand;
	}

}


