package service.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;
import dto.AdMovieDTO;

public class MovieWriteProcessService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		AdminDAO adminDAO = AdminDAO.getInstance();
		AdMovieDTO adMovieDTO = new AdMovieDTO();
		ActionCommand actionCommand = new ActionCommand();
		String realFolder = "";
		String saveFolder = "./boardUpload";
		int fileSize = 5 * 1024 * 1024;
		realFolder = request.getSession().getServletContext().getRealPath(saveFolder);
		//realFolder = "D:/img/movie";
		//realFolder = "./upload";
		boolean result = false;

		MultipartRequest multipartRequest = null;
	//	multipartRequest = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		multipartRequest = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());

		adMovieDTO.setTitle(multipartRequest.getParameter("title"));
		adMovieDTO.setTrailer(multipartRequest.getParameter("trailer"));
		adMovieDTO.setPoster(multipartRequest.getFilesystemName((String) multipartRequest.getFileNames().nextElement()));
		adMovieDTO.setRelease(multipartRequest.getParameter("release"));
		adMovieDTO.setRtime(multipartRequest.getParameter("rtime"));
		adMovieDTO.setAttd(Integer.parseInt(multipartRequest.getParameter("attd")));
		adMovieDTO.setCountry(multipartRequest.getParameter("country"));
		adMovieDTO.setGrade(multipartRequest.getParameter("grade"));
		adMovieDTO.setSummary(multipartRequest.getParameter("summary"));

		String[] dir = multipartRequest.getParameterValues("director");
		String[] ma = multipartRequest.getParameterValues("mainActor");
		String[] sa = multipartRequest.getParameterValues("subActor");
		String[] ge = multipartRequest.getParameterValues("genre");

		result = adminDAO.dataInsert(adMovieDTO);
		if (result == false) {
			System.out.println("영화 등록 실패");
			return null;
		}

		System.out.println("영화 등록 완료");

		int movieNum = adminDAO.getMoveNum();

		relationMake(dir, movieNum, adminDAO, "dir_rel");
		relationMake(ma, movieNum, adminDAO, "ma_rel");
		relationMake(sa, movieNum, adminDAO, "sa_rel");
		relationMake(ge, movieNum, adminDAO, "ge_rel");

		actionCommand.setRedirect(true);
		actionCommand.setPath("./MovieList.jh");

		return actionCommand;

	}
	
	//:을 구분자로 하여 구분해서 처리한다.
	private void relationMake(String[] relTable, int movieNum, AdminDAO adminDAO, String tableName) {
		// TODO Auto-generated method stub
		
		for (int i = 0; i < relTable.length; i++) {
			String[] relData = relTable[i].split(":");
			adminDAO.relDataInsert(tableName, movieNum, relData[0]);

		}

	}

}
