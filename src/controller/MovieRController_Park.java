package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.MovieDAO;
import dto.MovieInfoDTO;
import service.admin.ActorDeleteService;
import service.admin.ActorListService;
import service.admin.ActorWriteService;
import service.admin.DirectorDeleteService;
import service.admin.DirectorListService;
import service.admin.DirectorWriteService;
import service.admin.GenreDeleteService;
import service.admin.GenreListService;
import service.admin.GenreWriteService;
import service.admin.MovieListService;
import service.admin.MovieWriteProcessService;
import service.admin.MovieWriteService;
import service.movie.MovieEvalMoreService;
import service.movie.MovieListServiceData;
import service.movie.RecommendationService;

/**
 * Servlet implementation class MovieRController_Park
 */
@WebServlet("*.jh")
public class MovieRController_Park extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieRController_Park() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String pathURL = requestURI.substring(contextPath.length());
		ActionCommand actionCommand = null;
		MovieR_Action action = null;

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		System.out.println("uri : " + uri);
		System.out.println("conPath : " + conPath);
		System.out.println("com : " + com);

		System.out.println("입력된 주소 : " + pathURL);
		// 관리자가 영화의 리스트를 보는 곳
		if (pathURL.equals("/MovieList.jh")) {

			System.out.println("영화 리스트");
			action = new MovieListService();

			actionCommand = action.execute(request, response);
			System.out.println("리스트페이지로넘어가기 직전222");
			// 영화를 등록하는 페이지
		} else if (pathURL.equals("/MovieWrite.jh")) {
			System.out.println("영화 등록페이지");

			action = new MovieWriteService();

			actionCommand = action.execute(request, response);

		} else if (pathURL.equals("/MovieWriteProcess.jh")) {

			action = new MovieWriteProcessService();

			actionCommand = action.execute(request, response);
		}

		else if (pathURL.equals("/DirectorWrite.jh")) {
			actionCommand = new ActionCommand();

			actionCommand.setRedirect(false);
			actionCommand.setPath("./admin/movie/director_write.jsp");

		} else if (pathURL.equals("/DirectorWriteProcess.jh")) {

			System.out.println("감독등록 처리페이지...");
			action = new DirectorWriteService();
			System.out.println("감독 등록 완료");
			actionCommand = action.execute(request, response);

		}

		else if (pathURL.equals("/DirectorList.jh")) {

			System.out.println("감독 리스트");
			action = new DirectorListService();
			actionCommand = action.execute(request, response);
		} else if (pathURL.equals("/ActorList.jh")) {
			System.out.println("배우 리스트");
			action = new ActorListService();
			actionCommand = action.execute(request, response);
		} else if (pathURL.equals("/ActorWrite.jh")) {

			actionCommand = new ActionCommand();

			actionCommand.setRedirect(false);
			actionCommand.setPath("./admin/movie/actor_write.jsp");
		} else if (pathURL.equals("/ActorWriteProcess.jh")) {
			System.out.println("배우 등록 처리 페이지...");
			action = new ActorWriteService();
			actionCommand = action.execute(request, response);
		} else if (pathURL.equals("/GenreList.jh")) {
			System.out.println("장르 리스트");
			action = new GenreListService();
			actionCommand = action.execute(request, response);

		} else if (pathURL.equals("/GenreWrite.jh")) {

			actionCommand = new ActionCommand();
			actionCommand.setRedirect(false);
			actionCommand.setPath("./admin/movie/genre_write.jsp");

		} else if (pathURL.equals("/GenreWriteProcess.jh")) {
			System.out.println("장르 등록 처리 페이지...");
			action = new GenreWriteService();
			actionCommand = action.execute(request, response);
		} else if (pathURL.equals("/GenreDeleteProcess.jh")) {
			System.out.println("장르 삭제...");
			// String delNum = request.getParameter("delNum");

			action = new GenreDeleteService();

			actionCommand = action.execute(request, response);

		} else if (pathURL.equals("/ActorDeleteProcess.jh")) {
			action = new ActorDeleteService();

			actionCommand = action.execute(request, response);

		} else if (pathURL.equals("/DirectorDeleteProcess.jh")) {

			action = new DirectorDeleteService();

			actionCommand = action.execute(request, response);
			// 여기까지가 관리자 페이지 설정
			// 아래부터는 영화와 관련된 부분
		} else if (pathURL.equals("/movie/evalMore.jh")) {

			String genre = request.getParameter("genre");
			System.out.println("들어오는 장르 : " + genre);
			action = new MovieEvalMoreService();
			actionCommand = action.execute(request, response);

		} else if (pathURL.equals("/movie/evalMoreLoad.jh")) {

			String genreName = request.getParameter("genre");
			System.out.println("들어온 장르 : " + genreName);

			PrintWriter out = response.getWriter();
			MovieDAO movieDAO = MovieDAO.getInstance();

			int genre_num = movieDAO.getGenreNumber(genreName);

			ArrayList<MovieInfoDTO> movieList = new ArrayList<MovieInfoDTO>();

			String id = "admin";
			movieList = movieDAO.getGenMovDataList(genre_num, id);

			// ajax로 보낼 페이지 처리
			MovieListServiceData test = new MovieListServiceData(movieList, out);
			PrintWriter data = test.makeData();
		} else if (pathURL.equals("/movie/evaluate.jh")) {
			// db에 넣는부분 ... 일단 여기다 처리를 다 한다.
			String rating = request.getParameter("rating").trim();
			String movieNum = request.getParameter("movieNum").trim();

			System.out.println("별점 : " + rating);
			System.out.println("번호: " + movieNum);

			MovieDAO movieDAO = MovieDAO.getInstance();
			// HttpSession idSession = request.getSession();
			// String id = (String) idSession.getAttribute("id");
			String id = "admin";

			movieDAO.ratingInsert(id, movieNum, rating);

		} else if (pathURL.equals("/movie/recommendation.jh")) {

			action = new RecommendationService();
			actionCommand = action.execute(request, response);

		}

		// 페이지 이동
		if (actionCommand != null) {
			if (actionCommand.isRedirect()) {
				System.out.println("리다이렉트...");
				response.sendRedirect(actionCommand.getPath());
			} else {
				System.out.println("포워드....");
				RequestDispatcher dispatcher = request.getRequestDispatcher(actionCommand.getPath());
				dispatcher.forward(request, response);
			}

		} else {

			System.out.println("페이지가 이동하지는 않는다.");
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

}
