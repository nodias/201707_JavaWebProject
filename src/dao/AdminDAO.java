package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.ActorDTO;
import dto.AdMovieDTO;
import dto.DirectorDTO;
import dto.GenreDTO;
import util.DBManager;

public enum AdminDAO {
	ADMIN_DAO_INSTANCE;

	public static AdminDAO getInstance() {
		return ADMIN_DAO_INSTANCE;
	}

	// 리스트 갯수 새는 부분
	public int getListCount(String tableName) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = DBManager.getConnection();
			String sql = "SELECT COUNT(*) FROM " + tableName;
			System.out.println("MovieR...관리자DB접속.");
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {// 글의 갯수를 구하는 부분...
				i = resultSet.getInt(1);
				System.out.println(tableName + "테이블 글의 갯수 몇개냐 : " + i);
			}

		} catch (SQLException e) {
			System.out.println("글의 개수 구하기 실패...: " + e);
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return i;
	}

	public ArrayList<Object> getDataList(int page, int limit, String tableName) {

		ArrayList<Object> list = new ArrayList<Object>();

		// ArrayList<GenreDTO> list = new ArrayList<GenreDTO>();
		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		System.out.println("startrow : " + startrow);
		System.out.println("endrow : " + endrow);
		try {
			connection = DBManager.getConnection();
			String sql = "";

			if (tableName.equals("genre")) {
				sql = "select * from (select rownum gnum,gen_no,name,reg_date ";
				sql += " from (select * from genre order by gen_no asc))";
				sql += " where gnum>=? and gnum<=?";
			} else if (tableName.equals("actor")) {
				sql = "select * from (select rownum anum,act_no,name,img,reg_date ";
				sql += " from (select * from actor order by act_no asc))";
				sql += " where anum>=? and anum<=?";
			} else if (tableName.equals("director")) {
				sql = "select * from (select rownum dnum,dir_no,name,img,reg_date ";
				sql += " from (select * from director order by dir_no asc))";
				sql += " where dnum>=? and dnum<=?";
			} else if (tableName.equals("movie_info")) {
				sql = "select * from (select rownum mnum,mov_no,title,trailer,poster,";
				sql += "release,rtime,grade,attd,summary,reg_date, mod_date, country ";
				sql += " from (select * from movie_info order by mov_no asc))";
				sql += " where mnum>=? and mnum<=?";
			}

			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, startrow);
			preparedStatement.setInt(2, endrow);

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				if (tableName.equals("genre")) {
					GenreDTO genreDTO = new GenreDTO();
					genreDTO.setGen_no(resultSet.getInt("gen_no"));
					genreDTO.setName(resultSet.getString("name"));
					genreDTO.setReg_date(resultSet.getString("reg_date"));

					list.add(genreDTO);

				} else if (tableName.equals("actor")) {
					ActorDTO actorDTO = new ActorDTO();
					actorDTO.setAct_no(resultSet.getInt("act_no"));
					actorDTO.setName(resultSet.getString("name"));
					actorDTO.setImg(resultSet.getString("img"));
					actorDTO.setReg_date(resultSet.getString("reg_date"));

					list.add(actorDTO);

				} else if (tableName.equals("director")) {
					DirectorDTO directorDTO = new DirectorDTO();
					directorDTO.setDir_no(resultSet.getInt("dir_no"));
					directorDTO.setName(resultSet.getString("name"));
					directorDTO.setImg(resultSet.getString("img"));
					directorDTO.setReg_date(resultSet.getString("reg_date"));

					list.add(directorDTO);
				} else if (tableName.equals("movie_info")) {

					AdMovieDTO adMovieDTO = new AdMovieDTO();
					adMovieDTO.setMov_no(resultSet.getInt("mov_no"));
					adMovieDTO.setTitle(resultSet.getString("title"));
					adMovieDTO.setTrailer(resultSet.getString("trailer"));
					adMovieDTO.setPoster(resultSet.getString("poster"));
					adMovieDTO.setRelease(resultSet.getString("release"));
					adMovieDTO.setRtime(resultSet.getString("rtime"));
					adMovieDTO.setGrade(resultSet.getString("grade"));
					adMovieDTO.setAttd(resultSet.getInt("attd"));
					adMovieDTO.setSummary(resultSet.getString("summary"));
					adMovieDTO.setReg_date(resultSet.getString("reg_date"));
					adMovieDTO.setMod_date(resultSet.getString("mod_date"));
					adMovieDTO.setCountry(resultSet.getString("country"));

					list.add(adMovieDTO);
				}

			}

			return list;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return null;
	}

	public boolean dataInsert(Object dto) {

		String sql = "";
		int result = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = DBManager.getConnection();

			if (dto instanceof GenreDTO) {// 장르를 등록할 때에는 member테이블에 장르를 추가해야함...
				sql = "INSERT INTO genre VALUES(gen_no_seq.NEXTVAL,?,sysdate)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, ((GenreDTO) dto).getName());
				result = preparedStatement.executeUpdate();

			} else if (dto instanceof ActorDTO) {
				System.out.println("배우등록 sql부분");
				sql = "INSERT INTO actor VALUES(act_no_seq.NEXTVAL,?,?,sysdate)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, ((ActorDTO) dto).getName());

				preparedStatement.setString(2, ((ActorDTO) dto).getImg());
				result = preparedStatement.executeUpdate();
			} else if (dto instanceof DirectorDTO) {
				sql = "INSERT INTO director VALUES(dir_no_seq.NEXTVAL,?,?,sysdate)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, ((DirectorDTO) dto).getName());
				preparedStatement.setString(2, ((DirectorDTO) dto).getImg());
				result = preparedStatement.executeUpdate();
			} else if (dto instanceof AdMovieDTO) {
				sql = "INSERT INTO movie_info VALUES(movie_num_seq.NEXTVAL,?,?,?,?,?,?,?,?,sysdate,sysdate,?)";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, ((AdMovieDTO) dto).getTitle());
				preparedStatement.setString(2, ((AdMovieDTO) dto).getTrailer());
				preparedStatement.setString(3, ((AdMovieDTO) dto).getPoster());
				preparedStatement.setString(4, ((AdMovieDTO) dto).getRelease());
				preparedStatement.setString(5, ((AdMovieDTO) dto).getRtime());
				preparedStatement.setString(6, ((AdMovieDTO) dto).getGrade());
				preparedStatement.setInt(7, ((AdMovieDTO) dto).getAttd());
				preparedStatement.setString(8, ((AdMovieDTO) dto).getSummary());
				preparedStatement.setString(9, ((AdMovieDTO) dto).getCountry());

				result = preparedStatement.executeUpdate();

			}

			if (result == 0) {
				return false;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("글 등록 실패 : " + e);
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return true;
	}

	public int dataDelete(int delNum, String tableName) {
		// TODO Auto-generated method stub

		String sql = "";
		int result = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = DBManager.getConnection();

			if (tableName.equals("genre")) {
				sql = "DELETE FROM GENRE WHERE gen_no = ?";
			} else if (tableName.equals("actor")) {
				sql = "DELETE FROM ACTOR WHERE act_no = ?";
			} else if (tableName.equals("director")) {
				sql = "DELETE FROM DIRECTOR WHERE dir_no = ?";
			}

			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, delNum);
			result = preparedStatement.executeUpdate();
			System.out.println("삭제 완료");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement);
		}

		return result;
	}

	public ArrayList<Object> getDataList_m(String table) {
		// TODO Auto-generated method stub

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		ArrayList<Object> list = new ArrayList<Object>();

		sql = "SELECT * FROM " + table;
		try {

			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				if (table.equals("genre")) {
					GenreDTO genreDTO = new GenreDTO();
					genreDTO.setGen_no(resultSet.getInt("gen_no"));
					genreDTO.setName(resultSet.getString("name"));
					genreDTO.setReg_date(resultSet.getString("reg_date"));
					list.add(genreDTO);

				} else if (table.equals("director")) {
					DirectorDTO directorDTO = new DirectorDTO();
					directorDTO.setDir_no(resultSet.getInt("dir_no"));
					directorDTO.setName(resultSet.getString("name"));
					directorDTO.setImg(resultSet.getString("img"));
					directorDTO.setReg_date(resultSet.getString("reg_date"));
					list.add(directorDTO);
				} else if (table.equals("actor")) {
					ActorDTO actorDTO = new ActorDTO();
					actorDTO.setAct_no(resultSet.getInt("act_no"));
					actorDTO.setName(resultSet.getString("name"));
					actorDTO.setImg(resultSet.getString("img"));
					actorDTO.setReg_date(resultSet.getString("reg_date"));
					list.add(actorDTO);
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return list;
	}

	public void relDataInsert(String tableName, int movieNum, String splitData) {

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		sql = "INSERT INTO ";
		sql += tableName + " VALUES(?,?)";

		try {

			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, movieNum);
			preparedStatement.setInt(2, Integer.parseInt(splitData));

			int i = preparedStatement.executeUpdate();

			if (i < 1) {
				System.out.println("실패하였습니다.");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement);
		}

	}

	// 최신 영화번호 불러오는 메소드
	public int getMoveNum() {

		String sql = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		sql = "SELECT mov_no FROM MOVIE_INFO m1 WHERE m1.mov_no=(SELECT MAX(mov_no) from MOVIE_INFO m2)";
		try {

			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {

				return resultSet.getInt("mov_no");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return 0;
	}

	public ArrayList<GenreDTO> getGenreList() {
		// TODO Auto-generated method stub

		String sql = "";
		ArrayList<GenreDTO> list = new ArrayList<GenreDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		sql = "SELECT * FROM genre";

		try {
			connection = DBManager.getConnection();

			preparedStatement = connection.prepareStatement(sql);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				GenreDTO genreDTO = new GenreDTO();

				genreDTO.setGen_no(resultSet.getInt("gen_no"));
				genreDTO.setName(resultSet.getString("name"));
				genreDTO.setReg_date(resultSet.getString("reg_date"));

				list.add(genreDTO);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(connection, preparedStatement, resultSet);
		}

		return list;
	}

}
