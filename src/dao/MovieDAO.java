package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;

import dto.MemberDto;
import dto.MovieInfoDTO;
import util.DBManager;


//가장 진화된 싱글톤패턴
public enum MovieDAO{
	MOVIE_DAO_INSTANCE;
	
	public static MovieDAO getInstance(){
		return MOVIE_DAO_INSTANCE;
	}

	ArrayList<Integer> recommendedMovList;


	public ArrayList<MemberDto> recommendatedMov_memberInfo(String id, ArrayList<Integer> like_gen_list,
			int[] tasteNum) {

		// TODO Auto-generated method stub
		System.out.println("들어온 아이디 : " + id);

		

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		ResultSet resultSetTaste = null;

		// ArrayList<MemberDto> idList = new ArrayList<MemberDto>();
		// sameTasteList를 2차원으로 변경해야한다.
		ArrayList<String> idList = new ArrayList<String>();

		ArrayList<MemberDto> sameTasteList = new ArrayList<MemberDto>();

		

		String otherUsersql = "SELECT id FROM member WHERE id NOT IN(?)";

		// 좋아하는 장르를 찾는 쿼리... 나 이외의 다른 사람들이 어떤 장르를 좋아하는지를 조사하기 위함이다.
		String otherLikeSQL = "SELECT id, gen_no ";
		otherLikeSQL += " FROM ";
		otherLikeSQL += " (SELECT id, gen_no, count_gen_no, ROUND(RATIO_TO_REPORT(count_gen_no) OVER (),2)*100 AS gen_no_ratio ";
		otherLikeSQL += " FROM ";
		otherLikeSQL += " (SELECT id, gen_no, COUNT(gen_no) count_gen_no ";
		otherLikeSQL += " FROM ";
		otherLikeSQL += " (SELECT id, gen_no ,rat  FROM rat_rel RAT, ge_rel GEN WHERE id = ? AND RAT.mov_no = GEN.mov_no) ";
		otherLikeSQL += " GROUP BY id, gen_no ";
		otherLikeSQL += " ORDER BY count_gen_no DESC)) ";
		otherLikeSQL += " WHERE gen_no_ratio >=20 ";
		//비율이 20%가 넘으면 좋아하는 장르로 판단 ,, 추후에 개발할때에는 관리자 페이지에서 이 비율을 직접 조절할수 있게 개발하는것도 고려해 봐야할 사항
		try {
		
			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(otherUsersql);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			// 이 결과는 찾고자하는 아이디 이외의 모든 아이디들이 나옴.
			// 이제 이걸 활용해서 취향이 같은 사람만을 찾는다.

			while (resultSet.next()) {

				idList.add(resultSet.getString("id"));

			}
			// 접속자 이외의 유저 검색
			for (int i = 0; i < idList.size(); i++) {
				System.out.println(id + "이외의 유저(취향 분석할 사람들) : " + idList.get(i));
			}

			// 취향이 같은 사람들 다 조사
			for (int i = 0; i < idList.size(); i++) {
				// 조사할 사람
				String researchId = idList.get(i);
				System.out.println(researchId + "를 조사");
				preparedStatement = connection.prepareStatement(otherLikeSQL);
				preparedStatement.setString(1, researchId);
				resultSetTaste = preparedStatement.executeQuery();

				// 다른 유저가 좋아하는 장르번호들이 쫘악 나오게 된다.
				while (resultSetTaste.next()) {
					int resultGen_no = resultSetTaste.getInt("gen_no");

					for (int j = 0; j < tasteNum.length; j++) {
						if (resultGen_no == tasteNum[j]) {
							String sameTasteId = resultSetTaste.getString("id");

							MemberDto memberDto = new MemberDto();
							memberDto.setId(sameTasteId);
							memberDto.setLikeGenre(tasteNum[j]);
							sameTasteList.add(memberDto);
						}
					}

				}

			}

			for (int i = 0; i < tasteNum.length; i++) {
				System.out.println(id + "가 좋아하는 취향 번호 : " + tasteNum[i]);
			}

		
			System.out.println("나와 같은 취향의 사람들 명수 : " + sameTasteList.size());
			for (int i = 0; i < sameTasteList.size(); i++) {
				System.out.println("취향 같은 사람 아이디 : " + sameTasteList.get(i).getId() + " 취향 : "
						+ sameTasteList.get(i).getLikeGenre());

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet, resultSetTaste);
		}

		return sameTasteList;

	}

	// 최대인덱스를 찾는 알고리즘 작성
	// 찾은후 해당 인덱스의 값은 0으로 초기화한다.
	// 사람들이 가장 많이본 영화 5개를 찾아내주는 메소드
	//추후 퀵소트 적용해서 속도 빠르게 개선하는 방안 적용해야함.
	private int recommendMov(int[] countArr) {
		// TODO Auto-generated method stub

		int maxNum = -1;
		int result = 0;
		for (int i = 0; i < countArr.length; i++) {
			if (countArr[i] > maxNum) {
				maxNum = countArr[i];
				result = i;
			}

		}

		countArr[result] = -1;
		return result;
	}

	// 이 메소드에 의해서 countArr가 정리되어, 각장르별 사람들이 본 영화의 갯수들이 들어가게 된다.
	public void insertArr(int[] countArr, String id, int tasteNum, String others) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String sql = "";

		System.out.println("취향 번호 : " + tasteNum);
		System.out.println("다른 사용자 아이디 : " + others);

		try {
			

			connection = DBManager.getConnection();
			// id세션사용자가 좋아하는 장르의 영화중 보지 않은영화번호를 꺼내온다.
			sql = "SELECT mov_no ";
			sql += "FROM ";
			sql += "(SELECT * ";
			sql += "FROM ";
			sql += "(SELECT id, RAT.mov_no, RAT, gen_no ";
			sql += "FROM rat_rel RAT, ge_rel GEN";
			sql += " WHERE RAT.mov_no = GEN.mov_no AND id = ? AND gen_no = ?";
			sql += "ORDER BY RAT DESC) ";
			sql += ") ";
			sql += "WHERE mov_no NOT IN(SELECT mov_no FROM rat_rel WHERE id = ?)";

			preparedStatement = connection.prepareStatement(sql);
			// 첫번째는 세션이외의 아이디들을 while문을 통해 다 넣어봐야 함...

			preparedStatement.setString(1, others);
			// 선호장르
			preparedStatement.setInt(2, tasteNum);
			// 세션 아이디
			preparedStatement.setString(3, id);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				int mov_no = resultSet.getInt("mov_no");
				
				System.out.println(others + "가 본 " + tasteNum + "취향의 영화  번호: " + mov_no);
				
				countArr[mov_no]++;
				// mov_no 번째 칸에 영화의 갯수를 늘린다. 이로서 개수를 판단.
			}
			// 위의 결과 countArr 변수에 각 영화번호의 해당하는 칸에 영화의 갯수가 들어가게 된다.

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			DBManager.close(connection, preparedStatement, resultSet);
		}

	}

	// 접속한 사용자가 좋아하는 장르를 찾는 메소드
	public ArrayList<Integer> findTaste(String id) {
		// TODO Auto-generated method stub
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		String sql = "";
	

		ArrayList<Integer> like_gen_list = new ArrayList<Integer>();
		// 좋아하는 장르 리스트
		try {
			

			connection = DBManager.getConnection();
			// 본 장르의 비율이 20%가 넘으면 자주 보는 장르이므로 선호하는 장르라고 판단할 수 있다.
			sql = " SELECT id, gen_no ";
			sql += " FROM ";
			sql += " (SELECT id, gen_no, count_gen_no, ROUND(RATIO_TO_REPORT(count_gen_no) OVER (),2)*100 AS gen_no_ratio ";
			sql += " FROM ";
			sql += " (SELECT id, gen_no, COUNT(gen_no) count_gen_no";
			sql += " FROM ";
			sql += " (SELECT id, gen_no ,rat  FROM rat_rel RAT, ge_rel GEN WHERE id = ? AND RAT.mov_no = GEN.mov_no) ";
			sql += " GROUP BY id, gen_no ";
			sql += " ORDER BY count_gen_no DESC)) ";

			sql += " WHERE gen_no_ratio >=20 ";

			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);

			resultSet = preparedStatement.executeQuery();

			// 취향이 여러개 나올수 있으므로... 배열로 처리하는게 옳다고 본다!
			// resultSet변수 안에는 특정유저가 가장 좋아하는 취향의 장르번호가 들어있음.
			// taste = resultSet.getString("gen_no");
			while (resultSet.next()) {

				// tasteNumber = resultSet.getInt("gen_no");
				like_gen_list.add(resultSet.getInt("gen_no"));
			}

			for (int i = 0; i < like_gen_list.size(); i++) {
				System.out.println(id + "님께서 좋아하는 장르 : " + like_gen_list.get(i));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			DBManager.close(connection, preparedStatement, resultSet);
		}

		return like_gen_list;

	}

	//장르로 추천된 영화 리스트 반환
	public ArrayList<MovieInfoDTO> getGenreRecommendMovieList(ArrayList<Integer> recommendatedMovList,
			ArrayList<String> taste_genre_name) {
		// TODO Auto-generated method stub

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet_dir_no = null;

		String sql = "";
		ArrayList<MovieInfoDTO> recommendatedList = new ArrayList<MovieInfoDTO>();

		try {

			connection = DBManager.getConnection();

			sql = "SELECT * FROM movie_info WHERE mov_no = ?";

			for (int i = 0; i < recommendatedMovList.size(); i++) {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, recommendatedMovList.get(i));
				resultSet_dir_no = preparedStatement.executeQuery();

				if (resultSet_dir_no.next()) {

					MovieInfoDTO movieInfoDTO = new MovieInfoDTO();

					movieInfoDTO.setMov_no(resultSet_dir_no.getInt("mov_no"));
					movieInfoDTO.setTitle(resultSet_dir_no.getString("title"));
					movieInfoDTO.setTrailer(resultSet_dir_no.getString("trailer"));
					movieInfoDTO.setPoster(resultSet_dir_no.getString("poster"));
					movieInfoDTO.setRelease(resultSet_dir_no.getString("release"));
					movieInfoDTO.setRtime(resultSet_dir_no.getString("rtime"));
					movieInfoDTO.setGrade(resultSet_dir_no.getString("grade"));
					movieInfoDTO.setAttd(resultSet_dir_no.getInt("attd"));
					movieInfoDTO.setSummary(resultSet_dir_no.getString("summary"));
					movieInfoDTO.setReg_date(resultSet_dir_no.getString("reg_date"));
					movieInfoDTO.setMod_date(resultSet_dir_no.getString("mod_date"));
					movieInfoDTO.setCountry(resultSet_dir_no.getString("country"));

					movieInfoDTO.setGen_name(taste_genre_name.get(i));
					// movieInfoDTO.setGen_no(taste_genre_name[i]);

					recommendatedList.add(movieInfoDTO);
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet_dir_no);
		}

		return recommendatedList;
	}

	// @SuppressWarnings("resource")
	public ArrayList<Integer> getDirectorRecommendMovieList(String id, int[] repetition,
			ArrayList<Integer> dir_no_list) {
		

		ArrayList<Integer> uniqueDirectorList = null;

		// 몇번의 반복이 되는지 그 세트의 수를 구한다.
		int repetitionLength = repetition.length;

		// 매개변수로 id와 추천된 영화들이 2차원 배열로 들어왔다.
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		ResultSet recommend_director_resultSet = null;

		ArrayList<Integer> director_recomm_movieList = new ArrayList<Integer>();
		//감독에 의한 추천을 하지만, 장르별로 추천된 것은 중복을 제외하게끔 java를 이용해 처리
		//보완사항: 한명도 없을경우 가장 많이 본 감독으로 대체처리
		String recommend_directorMovie_sql = "SELECT * FROM ";
		recommend_directorMovie_sql += "(SELECT * ";
		recommend_directorMovie_sql += "FROM (SELECT mov_no ";
		recommend_directorMovie_sql += " FROM ";
		recommend_directorMovie_sql += "(SELECT mov_no, ROUND(RATIO_TO_REPORT(avg_rat) OVER (),2)*100 AS rat_ratio ";
		recommend_directorMovie_sql += " FROM ";
		recommend_directorMovie_sql += " (SELECT mov_no, AVG(rat) avg_rat ";
		recommend_directorMovie_sql += " FROM ";
		recommend_directorMovie_sql += " (SELECT RAT.mov_no, rat ";
		recommend_directorMovie_sql += " FROM ";
		recommend_directorMovie_sql += " (SELECT  * FROM dir_rel WHERE dir_no = ?) DIR, rat_rel RAT ";
		recommend_directorMovie_sql += " WHERE DIR.mov_no = RAT.mov_no AND id NOT IN(?)) GROUP BY mov_no)) ";
		recommend_directorMovie_sql += " WHERE rat_ratio > 10) ";
		//감독의 경우 종류가 많기에 비율이 10%만 넘어도 좋아하는 감독으로 설정하였다. 이도 추후 관리자 페이지에서 조절할 수 있게끔 하는 기능 추가 고려
		if (repetitionLength > 0) {
			recommend_directorMovie_sql += "WHERE mov_no NOT IN(SELECT mov_no FROM rat_rel WHERE id = ?) AND mov_no NOT IN(?";

			for (int i = 0; i < repetitionLength; i++) {
				if (i == (repetitionLength - 1)) {
					recommend_directorMovie_sql += "))";
				} else {
					recommend_directorMovie_sql += ",?";
				}

			}

		}

		recommend_directorMovie_sql += "WHERE ROWNUM <=5";
		//상위 최대 5개까지만 나타나게끔 처리하였다.
		try {

			connection = DBManager.getConnection();

			for (int i = 0; i < dir_no_list.size(); i++) {
				System.out.println("***뽑아낸 감독 번호 : " + dir_no_list.get(i));
			}

			System.out.println("dir_no_list.size : " + dir_no_list.size());
			System.out.println("repetition.length : " + repetition.length);
			System.out.println("repetition에 뭐있나 보자");
			for (int i = 0; i < repetition.length; i++) {
				System.out.println(repetition[i]);
			}

			// 감독뽑아넀으니 중복제거한다... 0910

			for (int i = 0; i < dir_no_list.size(); i++) {

				preparedStatement = connection.prepareStatement(recommend_directorMovie_sql);
				preparedStatement.setInt(1, dir_no_list.get(i));
				preparedStatement.setString(2, id);
				preparedStatement.setString(3, id);
				

				for (int j = 0; j < repetitionLength; j++) {
					preparedStatement.setInt(j + 4, repetition[j]);
				}

				recommend_director_resultSet = preparedStatement.executeQuery();

				// 감독의 영화도 중복될수가 있기에 중복처리 해줘야함
				while (recommend_director_resultSet.next()) {

					int mov_no = recommend_director_resultSet.getInt("mov_no");
					System.out.println("*****추천되는 영화 번호 : " + mov_no);

					director_recomm_movieList.add(mov_no);
				}

			}

			uniqueDirectorList = new ArrayList<Integer>(new HashSet<Integer>(director_recomm_movieList));
			System.out.println("중복 전부 다 처리 되었는지 체크!!!");
			for (int i = 0; i < uniqueDirectorList.size(); i++) {
				System.out.println(uniqueDirectorList.get(i));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, recommend_director_resultSet);
		}

		return uniqueDirectorList;
	}

	public ArrayList<MovieInfoDTO> getMovieInfoList(ArrayList<Integer> movList) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String sql = "";
		ArrayList<MovieInfoDTO> movieInfoList = new ArrayList<MovieInfoDTO>();

		try {
			connection = DBManager.getConnection();

			sql = " SELECT * FROM movie_info WHERE mov_no = ?";

			for (int i = 0; i < movList.size(); i++) {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, movList.get(i));
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {
					MovieInfoDTO movieInfoDTO = new MovieInfoDTO();

					movieInfoDTO.setMov_no(resultSet.getInt("mov_no"));
					movieInfoDTO.setTitle(resultSet.getString("title"));
					movieInfoDTO.setTrailer(resultSet.getString("trailer"));
					movieInfoDTO.setPoster(resultSet.getString("poster"));
					movieInfoDTO.setRelease(resultSet.getString("release"));
					movieInfoDTO.setRtime(resultSet.getString("rtime"));
					movieInfoDTO.setGrade(resultSet.getString("grade"));
					movieInfoDTO.setAttd(resultSet.getInt("attd"));
					movieInfoDTO.setSummary(resultSet.getString("summary"));
					movieInfoDTO.setReg_date(resultSet.getString("reg_date"));
					movieInfoDTO.setMod_date(resultSet.getString("mod_date"));
					movieInfoDTO.setCountry(resultSet.getString("country"));

					movieInfoList.add(movieInfoDTO);

				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return movieInfoList;
	}


	public ArrayList<String> findTasteGenreName(int[] taste_genre_num, int length) {
		// TODO Auto-generated method stub

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		ArrayList<String> taste_genre_name = new ArrayList<String>();

		try {
			sql = "SELECT name FROM genre WHERE gen_no = ?";
			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);

			for (int i = 0; i < taste_genre_num.length; i++) {

				for (int j = 0; j < 5; j++) {
					preparedStatement.setInt(1, taste_genre_num[i]);
					resultSet = preparedStatement.executeQuery();
					if (resultSet.next()) {
						taste_genre_name.add(resultSet.getString("name"));
					}

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return taste_genre_name;
	}

	public ArrayList<Integer> getFavoriteDirectorList(String id) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		ArrayList<Integer> taste_dir_no = new ArrayList<Integer>();

		String favorite_director_sql = "";
		try {
			connection = DBManager.getConnection();
			//접속자가 좋아하는 감독 찾기
			favorite_director_sql = "SELECT dir_no FROM ";
			favorite_director_sql += "  (SELECT dir_no, dir_count, ROUND(RATIO_TO_REPORT(dir_count) OVER (), 2)*100 AS favorite_director FROM ";
			favorite_director_sql += " (SELECT dir_no,COUNT(dir_no) dir_count FROM ";
			favorite_director_sql += " (SELECT mov_no FROM rat_rel WHERE id=?) RAT, dir_rel DIR ";
			favorite_director_sql += " WHERE RAT.mov_no = DIR.mov_no ";
			favorite_director_sql += " GROUP BY dir_no ";
			favorite_director_sql += " ORDER BY dir_count )) ";
			favorite_director_sql += " WHERE favorite_director > 10";

			preparedStatement = connection.prepareStatement(favorite_director_sql);
			preparedStatement.setString(1, id);

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				taste_dir_no.add(resultSet.getInt("dir_no"));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return taste_dir_no;
	}

	public ArrayList<String> getDirectorNameList(ArrayList<Integer> director_recommendatedMovieList) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		ArrayList<String> dir_recommend_movieInfo_list = new ArrayList<String>();

		String sql = "";

		try {
			connection = DBManager.getConnection();

			sql = "SELECT director.name FROM ";
			sql += " (SELECT dir_no FROM dir_rel WHERE mov_no = ?) DREL, director ";
			sql += "WHERE DREL.dir_no = director.dir_no";

			for (int i = 0; i < director_recommendatedMovieList.size(); i++) {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, director_recommendatedMovieList.get(i));
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {
					dir_recommend_movieInfo_list.add(resultSet.getString("name"));

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return dir_recommend_movieInfo_list;
	}

	//추천처리
	public ArrayList<Integer> recommendate(String id, ArrayList<Integer> like_gen_list,
			ArrayList<MemberDto> recommendatedMov_memberInfo, int[][] countArr, int[] tasteNum) {

		// 추천받을 각장르별 상위 5개의 영화를 받을 2차원 배열
		int recommndMov_no[][] = null;

		recommndMov_no = new int[tasteNum.length][];

		for (int i = 0; i < recommndMov_no.length; i++) {
			recommndMov_no[i] = new int[5];
		} 

		recommendedMovList = new ArrayList<Integer>();

		for (int i = 0; i < recommndMov_no.length; i++) {
			for (int j = 0; j < recommndMov_no[i].length; j++) {

				int tempMov_no = recommendMov(countArr[i]);

				for (int test = 0; test < recommndMov_no.length; test++) {
					// 2번째 줄부터 검사를해서 만약 이전줄과 중복되는게 있어버리면 의미없는값 -1을 넣어버려서 중복해결
					if (i != 0 && tempMov_no == recommndMov_no[i - 1][test]) {
						recommndMov_no[i][j] = 0;
					} else {
						recommndMov_no[i][j] = tempMov_no;
					}
				}
				//아무것도 추천안되면 0으로 처리해버린다. 0,1,2,3,4는 없는 영화번호임 그러므로 추후에 시퀀스를 쓴다고 하더라도  영화번호는 시작을 5번부터해야 문제가 발생하지 않음
				if (recommndMov_no[i][j] == 0 || recommndMov_no[i][j] == 1 || recommndMov_no[i][j] == 2
						|| recommndMov_no[i][j] == 3 || recommndMov_no[i][j] == 4) {
					recommndMov_no[i][j] = 0;
				}

				recommendedMovList.add(recommndMov_no[i][j]);

			}

		}

		System.out.println("recommndMov_no.length :  " + recommndMov_no.length);
		for (int i = 0; i < recommndMov_no.length; i++) {
			System.out.println(i + "번째 추천된 영화");
			for (int j = 0; j < recommndMov_no[i].length; j++) {
				System.out.println(recommndMov_no[i][j]);
			}
		}

		return recommendedMovList;
	}

	public ArrayList<String> findMovName(int[] tasteNum, ArrayList<Integer> recommendatedMov) {
		// 취향번호들과, 추천된 영화리스트들이 옴
		// 장르번호가 47이고 영화번호가 52인 영화의 제목은 뭐냐? 이거 쿼리로만들면됨

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String sql = "";

		ArrayList<String> mov_nameList = new ArrayList<String>();

		try {
			connection = DBManager.getConnection();
			sql = "SELECT MOVIE.title FROM ";
			sql += " (SELECT mov_no FROM ge_rel WHERE mov_no = ? AND gen_no = ?) G_REL, movie_info MOVIE";
			sql += " WHERE G_REL.mov_no = MOVIE.mov_no ";

			preparedStatement = connection.prepareStatement(sql);

			for (int i = 1; i <= tasteNum.length; i++) {

				//남아있는 취향의 갯수를 새는 알고리즘
				//끝의 갯수를 활용하여 시작점을 구하였다.
				int end = (5 * i) - 1;
				int start = end - 4;

				for (int j = start; j <= end; j++) {
					preparedStatement.setInt(1, recommendatedMov.get(j));
					preparedStatement.setInt(2, tasteNum[i - 1]);
					resultSet = preparedStatement.executeQuery();

					if (resultSet.next()) {
						mov_nameList.add(resultSet.getString("title"));
					} else {
						System.out.println("아무것도 없는 영화");
						mov_nameList.add(null);

					}

				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return mov_nameList;
	}

	public ArrayList<MovieInfoDTO> makeMovieInfoDto(ArrayList<Integer> recommendatedMov, ArrayList<String> mov_nameList,
			ArrayList<String> genre_nameList) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String sql = "";
		ArrayList<MovieInfoDTO> genre_recommendedList = new ArrayList<MovieInfoDTO>();

		try {
			connection = DBManager.getConnection();

			sql = "SELECT * FROM movie_info WHERE mov_no = ?";

			for (int i = 0; i < recommendatedMov.size(); i++) {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, recommendatedMov.get(i));
				resultSet = preparedStatement.executeQuery();

				while (resultSet.next()) {

					MovieInfoDTO movieInfoDTO = new MovieInfoDTO();

					movieInfoDTO.setMov_no(resultSet.getInt("mov_no"));
					movieInfoDTO.setTitle(resultSet.getString("title"));
					movieInfoDTO.setTrailer(resultSet.getString("trailer"));
					movieInfoDTO.setPoster(resultSet.getString("poster"));
					movieInfoDTO.setRelease(resultSet.getString("release"));
					movieInfoDTO.setRtime(resultSet.getString("rtime"));
					movieInfoDTO.setGrade(resultSet.getString("grade"));
					movieInfoDTO.setAttd(resultSet.getInt("attd"));
					movieInfoDTO.setSummary(resultSet.getString("summary"));
					movieInfoDTO.setReg_date(resultSet.getString("reg_date"));
					movieInfoDTO.setMod_date(resultSet.getString("mod_date"));
					movieInfoDTO.setCountry(resultSet.getString("country"));

					movieInfoDTO.setGen_name(genre_nameList.get(i));
					// movieInfoDTO.setGen_no(taste_genre_name[i]);

					genre_recommendedList.add(movieInfoDTO);
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//DBManager.close(connection, preparedStatement, resultSet);
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return genre_recommendedList;
	}

	public ArrayList<MovieInfoDTO> getGenMovDataList(int genre_num, String id) {
		// TODO Auto-generated method stub
		// genreName 에 예를들어 action(액션영화)가 왔다고 가정하고 처리해보면...

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		ArrayList<MovieInfoDTO> list = new ArrayList<MovieInfoDTO>();

		
		if (genre_num != 0) {// 장르별 영화를 뽑아내는 sql
			
			sql = "SELECT mov_no, title, trailer, poster, release, rtime, grade, attd, summary, reg_date, mod_date, country FROM ";
			sql += "(SELECT mov_no, title, trailer, poster, release, rtime, grade, attd, summary, mv_reg_date reg_date,mv_mod_date mod_date,country FROM ";
			sql += "(SELECT mv.mov_no, g.gen_no,  mv.title,g.name, mv.trailer, mv.poster, mv.release, mv.rtime, mv.grade, mv.attd, mv.summary, mv.reg_date mv_reg_date, mv.mod_date mv_mod_date, mv.country, g.reg_date";
			sql += " FROM  movie_info mv, ge_rel gr, genre g ";
			sql += "WHERE mv.mov_no = gr.mov_no AND g.gen_no = gr.gen_no)";
			sql += " WHERE GEN_NO = ?) ";
			sql += " WHERE mov_no NOT IN (SELECT mov_no FROM rat_rel WHERE id = ?)";
		} else { //평균 별점 높은 순서대로의 영화를 뽑는 sql
			sql = " SELECT TT.mov_no mov_no, title, trailer, poster, release, rtime, grade, attd, summary, reg_date, mod_date, country FROM";
			sql += " (SELECT ROWNUM rank, mov_no FROM";
			sql += " (SELECT mov_no, ROUND(AVG(rat),1) avg FROM rat_rel WHERE mov_no NOT IN(SELECT mov_no FROM rat_rel WHERE id=?)";
			sql += " GROUP BY mov_no ";
			sql += " ORDER BY avg DESC)) TT, movie_info ";
			sql += " WHERE TT.mov_no = movie_info.mov_no ";
			sql += " ORDER BY rank";
		}
		try {
			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);
			if (genre_num != 0) {
				preparedStatement.setInt(1, genre_num);
				preparedStatement.setString(2, id);
			} else {
				preparedStatement.setString(1, id);
			}
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				MovieInfoDTO movieInfoDTO = new MovieInfoDTO();

				movieInfoDTO.setMov_no(resultSet.getInt("mov_no"));
				movieInfoDTO.setTitle(resultSet.getString("title"));
				movieInfoDTO.setTrailer(resultSet.getString("trailer"));
				movieInfoDTO.setPoster(resultSet.getString("poster"));
				movieInfoDTO.setRelease(resultSet.getString("release"));
				movieInfoDTO.setRtime(resultSet.getString("rtime"));
				movieInfoDTO.setGrade(resultSet.getString("grade"));
				movieInfoDTO.setAttd(resultSet.getInt("attd"));
				movieInfoDTO.setSummary(resultSet.getString("summary"));
				movieInfoDTO.setReg_date(resultSet.getString("reg_date"));
				movieInfoDTO.setMod_date(resultSet.getString("mod_date"));
				movieInfoDTO.setCountry(resultSet.getString("country"));

				list.add(movieInfoDTO);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return list;
	}

	public int getGenreNumber(String genreName) {
		// TODO Auto-generated method stub

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		sql = "SELECT gen_no FROM genre WHERE name = ?";

		try {
			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, genreName);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				return resultSet.getInt("gen_no");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		// 0이 아니고 첫번째 장르의 영화가 return 되야함... 그러므로 여기서 불러오는 메소드가 필요!
		return 0;
	}
	
	public void ratingInsert(String id, String movieNum, String rating) {
		// TODO Auto-generated method stub
		String sql = "";
		int result = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		// 삽입하기전... select를 해서 내가 본 영화인지 아닌지를 먼저 확인해야 할 것이다.

	
		try {
			connection = DBManager.getConnection();

			String selectSql = "SELECT * FROM rat_rel WHERE mov_no=? and id=?";
			preparedStatement = connection.prepareStatement(selectSql);
			preparedStatement.setInt(1, Integer.parseInt(movieNum));
			preparedStatement.setString(2, id);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				// 있는 경우이니 update해야함...
				sql = "UPDATE rat_rel SET rat = ? WHERE id=? AND mov_no = ?";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, Integer.parseInt(rating));
				preparedStatement.setString(2, id);
				preparedStatement.setInt(3, Integer.parseInt(movieNum));
				result = preparedStatement.executeUpdate();
				System.out.println(result+"개의 점수가 Update되었습니다.");

			} else {// 없는경우이니 INSERT해야함
				sql = "INSERT INTO rat_rel VALUES(?,?,?)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, Integer.parseInt(movieNum));
				preparedStatement.setString(2, id);
				preparedStatement.setInt(3, Integer.parseInt(rating));
				result = preparedStatement.executeUpdate();
				System.out.println(result+"개의 점수가 Insert되었습니다.");
			}

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

	}
}
