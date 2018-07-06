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
import dto.ActorDTO;


//감독의 이름과 프로필 사진을 등록하는 부분
public class ActorWriteService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminDAO adminDAO = AdminDAO.getInstance();
		ActorDTO actorDTO = new ActorDTO();
		ActionCommand actionCommand = new ActionCommand();
		String realFolder = "";
		String saveFolder = "./actorUpload";
		int fileSize = 5 * 1024 * 1024;
		realFolder = request.getSession().getServletContext().getRealPath(saveFolder);
		//realFolder = "D:/img/actor";
		boolean result = false;
		
		MultipartRequest multipartRequest = null;
		multipartRequest = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println("리얼 폴더 : " + realFolder);
		actorDTO.setName(multipartRequest.getParameter("name"));
		actorDTO.setImg(multipartRequest.getFilesystemName((String)multipartRequest.getFileNames().nextElement()));
		result = adminDAO.dataInsert(actorDTO);
		if(result == false){
			System.out.println("배우 등록 실패");
			return null;
		}
		System.out.println("배우 등록 완료");
		actionCommand.setRedirect(true);
		actionCommand.setPath("./ActorList.jh");
		return actionCommand;
		
	
	}

}
