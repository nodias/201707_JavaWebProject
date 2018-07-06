package service.movie;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MovieR_Action;
import command.ActionCommand;
import dao.MovieDAO;
import dto.MemberDto;
import dto.MovieInfoDTO;

public class RecommendationService implements MovieR_Action {

	@Override
	public ActionCommand execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		ActionCommand actionCommand = new ActionCommand();
		
		ArrayList<MemberDto> recommendatedMov_memberInfo = new ArrayList<MemberDto>();
		// 장르가 비슷한 사람의 아이디와 정보가 들어감

		MovieDAO movieDAO = MovieDAO.getInstance();
		
		// HttpSession idSession = request.getSession();
		// String id = (String) idSession.getAttribute("id");
		String id = "admin";


		ArrayList<Integer> like_gen_list = new ArrayList<Integer>();
		// 해당 유저가 좋아하는 장르 번호들이 들어감

		like_gen_list = movieDAO.findTaste(id);

		int[] tasteNum = new int[like_gen_list.size()];
		// 좋아하는 장르가 들어간 배열
		for (int i = 0; i < tasteNum.length; i++) {
			tasteNum[i] = like_gen_list.get(i);
		}
		int[][] countArr = new int[like_gen_list.size()][];

		for (int i = 0; i < countArr.length; i++) {
			countArr[i] = new int[10000];
		}
		// 어느영화를 봤는지 갯수를 세는 배열

		// 취향이 같은사람의 아이디와, 그사람이 좋아하는 취향이 들어가있음
		recommendatedMov_memberInfo = movieDAO.recommendatedMov_memberInfo(id, like_gen_list, tasteNum);

		
		//인기장르별 영화 갯수 처리
		for (int i = 0; i < recommendatedMov_memberInfo.size(); i++) {

			for (int j = 0; j < tasteNum.length; j++) {
				movieDAO.insertArr(countArr[j], id, tasteNum[j], recommendatedMov_memberInfo.get(i).getId());
			}
		}

		// recommendatedMov_memberInfo 를 활용하여 영화를 추천받는 메소드를 만든다.
		// 중복이 전부 제거된 리스트
		ArrayList<Integer> recommendatedMov;
		// 이안에 중복제거 + 5개단위로 장르별로 분리 다 처리됨!
		
		
		//추천처리
		recommendatedMov = movieDAO.recommendate(id, like_gen_list, recommendatedMov_memberInfo, countArr, tasteNum);

		System.out.println("like_gen_list Size  : " + like_gen_list.size());

	

		int repetition[] = new int[recommendatedMov.size()];

		for (int i = 0; i < recommendatedMov.size(); i++) {
			System.out.println("%%% 추천된 영화 : " + recommendatedMov.get(i));

		}


		// 좋아하는 장르 배열
		int[] like_genre_numArr = new int[like_gen_list.size()];
		for (int i = 0; i < like_genre_numArr.length; i++) {
			like_genre_numArr[i] = like_gen_list.get(i);
		}



		System.out.println("장르번호배열");
		for (int i = 0; i < like_genre_numArr.length; i++) {
			System.out.println(like_genre_numArr[i]);
		}
		System.out.println("장르리스트");
		for (int i = 0; i < recommendatedMov.size(); i++) {
			System.out.println(recommendatedMov.get(i));
		}


		ArrayList<String> mov_nameList = new ArrayList<String>();
		mov_nameList = movieDAO.findMovName(tasteNum, recommendatedMov);

		ArrayList<String> genre_nameList = new ArrayList<String>();
		genre_nameList = movieDAO.findTasteGenreName(tasteNum, recommendatedMov.size());
		//보완사항: 만약 추천영화가 없다면! 가장 인기가 많았던것이라던지 뭐든 추천을 해주는 방향으로 처리해야 함(스프링)

		
		//무의미한곳은 -1처리하였기에 그부분 전부 삭제.  단, 아무런 영화도 선택하지 않은 경우고려하여 isEmpty메소드 활용
		int key = 0;
		if (!recommendatedMov.isEmpty()) {
			while (true) {

				if (recommendatedMov.get(key) == 0) {
					recommendatedMov.remove(key);
					mov_nameList.remove(key);
					genre_nameList.remove(key);
				} else {
					key++;
				}

				if (recommendatedMov.size() == key) {
					break;
				}

			}
		}else{//영화를 추천해달라는 페이지 띄워야함.
			System.out.println("추천할 영화가 없습니다. 영화를 조금더 선택해 주세요! 페이지를 띄워야함");
		}



		System.out.println("장르 추천 영화 테스트");
		for (int i = 0; i < mov_nameList.size(); i++) {
			
			System.out.println("영화 번호 : " + recommendatedMov.get(i) + " 영화 제목 : " + mov_nameList.get(i) + "장르 : "
					+ genre_nameList.get(i));
			
			repetition[i] = recommendatedMov.get(i);
		}

		// 이제 이 정보드를 MovieInfoDTO에 집어 넣어서 화면단에 뿌리면 끝
		ArrayList<MovieInfoDTO> genre_recommendedList = new ArrayList<MovieInfoDTO>();
		genre_recommendedList = movieDAO.makeMovieInfoDto(recommendatedMov, mov_nameList, genre_nameList);


		ArrayList<Integer> director_recommendatedMovieNumList = new ArrayList<Integer>();
		// 좋아하는 감독부터 찾는다
		ArrayList<Integer> dir_no_list = new ArrayList<Integer>();
		dir_no_list = movieDAO.getFavoriteDirectorList(id);
		System.out.println("&&& 좋아하는 감독 리스트");
		for (int i = 0; i < dir_no_list.size(); i++) {
			System.out.println("%^%^좋아하는 감독 : " + dir_no_list.get(i));
		}

		// 중복 다 제거된 감독에 의해 추천된 영화가 들어가있음
		director_recommendatedMovieNumList = movieDAO.getDirectorRecommendMovieList(id, repetition, dir_no_list);
		// 영화정보에 맞는 감독을 넣어준다.

		ArrayList<String> dir_recommend_name = new ArrayList<String>();
		// 추천된 영화번호의 감독 이름
		dir_recommend_name = movieDAO.getDirectorNameList(director_recommendatedMovieNumList);
		// 영화정보 얻는 부분 따로 만들어 둔다~ 나중에 유지보수를 위해서라도 ... 결합도를 낮추게끔 개발하는것을 잊으면 안됨.
		ArrayList<MovieInfoDTO> dir_recommend_movieInfoList = new ArrayList<MovieInfoDTO>();
		dir_recommend_movieInfoList = movieDAO.getMovieInfoList(director_recommendatedMovieNumList);

		for (int i = 0; i < dir_recommend_movieInfoList.size(); i++) {
			dir_recommend_movieInfoList.get(i).setDir_name(dir_recommend_name.get(i));
		}


		request.setAttribute("genre_recommendedList", genre_recommendedList);
		request.setAttribute("director_recommendedList", dir_recommend_movieInfoList);

		

		actionCommand.setRedirect(false);
		actionCommand.setPath("../movie/recommendation.jsp");

		return actionCommand;
	}


}
