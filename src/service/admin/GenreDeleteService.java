package service.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;

public class GenreDeleteService implements MovieR_Action {

	// 장르 삭제
	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		ActionCommand actionCommand = new ActionCommand();
		AdminDAO adminDAO = AdminDAO.getInstance();
		int delNum = Integer.parseInt(request.getParameter("delNum"));
		String tableName = "genre";
		int i = adminDAO.dataDelete(delNum, tableName);

		if (i == 0) {
			System.out.println("장르 삭제 실패");
			return null;
		}
		actionCommand.setRedirect(true);
		actionCommand.setPath("./GenreList.jh");

		return actionCommand;
	}

}
