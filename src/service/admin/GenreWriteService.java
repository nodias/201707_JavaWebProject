package service.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.AdminDAO;
import dto.GenreDTO;


//감독의 이름과 프로필 사진을 등록하는 부분
public class GenreWriteService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminDAO adminDAO = AdminDAO.getInstance();
		GenreDTO genreDTO = new GenreDTO();
		ActionCommand actionCommand = new ActionCommand();
		/*String realFolder = "";
		String saveFolder = "./boardUpload";
		int fileSize = 5 * 1024 * 1024;
		realFolder = request.getSession().getServletContext().getRealPath(saveFolder);*/
		
		boolean result = false;
		
//		MultipartRequest multipartRequest = null;
//		multipartRequest = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		directorDTO.setName(multipartRequest.getParameter("name"));
//		directorDTO.setImg(multipartRequest.getFilesystemName((String)multipartRequest.getFileNames().nextElement()));'
		genreDTO.setName(request.getParameter("name"));
		result = adminDAO.dataInsert(genreDTO);
		if(result == false){
			System.out.println("장르 등록 실패");
			return null;
		}
		System.out.println("장르 등록 완료");
		actionCommand.setRedirect(true);
		actionCommand.setPath("./GenreList.jh");
		return actionCommand;
		
	
	}

}
