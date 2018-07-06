package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.MemberDto;

public class MemberDao {

    public static final int MEMBER_JOIN_SUCCESS = 1;
    public static final int MEMBER_JOIN_FAIL = 0;
    public static final int MEMBER_EXISTENT = 1;
    public static final int MEMBER_NONEXISTENT = 0;
    public static final int MEMBER_LOGIN_SUCCESS = 1;
    public static final int MEMBER_LOGIN_FAIL = 0;
    public static final int MEMBER_PW_WRONG = -1;
    public static final int MEMBER_DELETE_SUCCESS = 1;
    public static final int MEMBER_DELETE_FAIL = 0;
    public static final int MEMBER_INSERT_SUCCESS = 1;
    public static final int MEMBER_INSERT_FAIL = 0;
    public static final int CONFIRM_TOKEN_SUCCESS = 1;
    public static final int CONFIRM_TOKEN_FAIL = 0;

    private static MemberDao instance = new MemberDao();

    private MemberDao() {
	System.out.println("위치 : MemberDao");
    }

    public static MemberDao getInstance() {
	return instance;
    }

    public int insertMember(MemberDto memberDto) {
	int ri = 0;
	System.out.println("insertMember");
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	String sql = "insert into member values(?,?,?,?,?,?,?,?)";
	try {
	    connection = getConnection();
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, memberDto.getId());
	    preparedStatement.setString(2, memberDto.getPw());
	    preparedStatement.setString(3, memberDto.getName());
	    preparedStatement.setString(4, memberDto.getImg());
	    preparedStatement.setString(5, memberDto.getReg_date());
	    preparedStatement.setString(6, memberDto.getMod_date());
	    preparedStatement.setString(7, memberDto.getGrade());
	    preparedStatement.setString(8, memberDto.getToken());
	    preparedStatement.executeUpdate();
	    ri = MemberDao.MEMBER_JOIN_SUCCESS;
	    System.out.println("MEMBER_JOIN_SUCCESS");
	} catch (Exception e) {
	    e.printStackTrace();
	} finally {
	    try {
		if (preparedStatement != null)
		    preparedStatement.close();
		if (connection != null)
		    connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

	return ri;
    }

    public int confirmId(String id) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	String sql = "select id from member where id=?";
	try {
	    connection = getConnection();
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, id);
	    resultSet = preparedStatement.executeQuery();
	    if (resultSet.next()) {
		ri = MemberDao.MEMBER_EXISTENT;
	    } else {
		ri = MemberDao.MEMBER_NONEXISTENT;
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	} finally {
	    try {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}
	return ri;
    }

    public int updateMemberConfirm(String id, String token) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	String sql = "select token from member where id=?";
	try {
	    connection = getConnection();
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, id);
	    resultSet = preparedStatement.executeQuery();
	    if (resultSet.next()) {
		if (token.equals(resultSet.getString("token"))) {
		    ri = MemberDao.CONFIRM_TOKEN_SUCCESS;
		} else {
		    ri = MemberDao.CONFIRM_TOKEN_FAIL;
		}
	    } else {
		ri = MemberDao.CONFIRM_TOKEN_FAIL;
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	} finally {
	    try {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}
	return ri;
    }
    
    public int userCheck(String id, String pw) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	connection = getConnection();
	String sql = "select pw from member where id=?";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, id);
	    resultSet = preparedStatement.executeQuery();
	    if (resultSet.next()) {
		if (pw.equals(resultSet.getString("pw"))) {
		    ri = MEMBER_LOGIN_SUCCESS;
		} else {
		    ri = MEMBER_PW_WRONG;
		}
	    } else {
		ri = MEMBER_LOGIN_FAIL;
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	} finally {
	    try {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	    } catch (SQLException e) {
		e.printStackTrace();
	    }

	}
	return ri;
    }

    public MemberDto getMember(String id) {
	MemberDto memberDto = null;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	connection = getConnection();
	String sql = "select id,pw,name,img,reg_date,mod_date,grade from member where id=?";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, id);
	    resultSet = preparedStatement.executeQuery();
	    if (resultSet.next()) {
		memberDto = new MemberDto();
		memberDto.setId(resultSet.getString("id"));
		memberDto.setPw(resultSet.getString("pw"));
		memberDto.setName(resultSet.getString("name"));
		memberDto.setImg(resultSet.getString("img"));
		memberDto.setReg_date(resultSet.getString("reg_date"));
		memberDto.setMod_date(resultSet.getString("mod_date"));
		memberDto.setGrade(resultSet.getString("grade"));
	    }
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}
	return memberDto;
    }

    public ArrayList<MemberDto> getList() {
	MemberDto memberDto = null;
	ArrayList<MemberDto> arrayList = null;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	connection = getConnection();
	String sql = "select id from member";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    resultSet = preparedStatement.executeQuery();
	    arrayList = new ArrayList<MemberDto>();
	    for (; resultSet.next();) {
		memberDto = new MemberDto();
		memberDto.setId(resultSet.getString("id"));
		arrayList.add(memberDto);
	    }
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		resultSet.close();
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}
	return arrayList;
    }

    public int updateMember(MemberDto memberDto) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	connection = getConnection();
	String sql = "update member set pw=?, name=?, img=?, mod_date=?, reg_date=?, grade=? where id = ?";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, memberDto.getPw());
	    preparedStatement.setString(2, memberDto.getName());
	    preparedStatement.setString(3, memberDto.getImg());
	    preparedStatement.setString(4, memberDto.getMod_date());
	    preparedStatement.setString(5, memberDto.getReg_date());
	    preparedStatement.setString(6, memberDto.getGrade());
	    preparedStatement.setString(7, memberDto.getId());
	    ri = preparedStatement.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

	return ri;
    }
    public int updateMemberPW(MemberDto memberDto) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	connection = getConnection();
	String sql = "update member set pw=?, name=?, mod_date=?, reg_date=? where id = ?";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, memberDto.getPw());
	    preparedStatement.setString(2, memberDto.getName());
	    preparedStatement.setString(3, memberDto.getMod_date());
	    preparedStatement.setString(4, memberDto.getReg_date());
	    preparedStatement.setString(5, memberDto.getId());
	    ri = preparedStatement.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

	return ri;
    }
    
    public int updateMemberID(MemberDto memberDto) {
   	int ri = 0;
   	Connection connection = null;
   	PreparedStatement preparedStatement = null;
   	connection = getConnection();
   	String sql = "update member set name=?, mod_date=?, reg_date=? where id = ?";
   	try {
   	    preparedStatement = connection.prepareStatement(sql);
   	    preparedStatement.setString(1, memberDto.getName());
   	    preparedStatement.setString(2, memberDto.getMod_date());
   	    preparedStatement.setString(3, memberDto.getReg_date());
   	    preparedStatement.setString(4, memberDto.getId());
   	    ri = preparedStatement.executeUpdate();
   	} catch (SQLException e) {
   	    e.printStackTrace();
   	} finally {
   	    try {
   		preparedStatement.close();
   		connection.close();
   	    } catch (Exception e2) {
   		e2.printStackTrace();
   	    }
   	}

   	return ri;
       }
    
    public int updateMemberToken(MemberDto memberDto) {
   	int ri = 0;
   	Connection connection = null;
   	PreparedStatement preparedStatement = null;
   	connection = getConnection();
   	String sql = "update member set token=?, mod_date=?, reg_date=? where id = ?";
   	try {
   	    preparedStatement = connection.prepareStatement(sql);
   	    preparedStatement.setString(1, memberDto.getToken());
   	    preparedStatement.setString(2, memberDto.getMod_date());
   	    preparedStatement.setString(3, memberDto.getReg_date());
   	    preparedStatement.setString(4, memberDto.getId());
   	    ri = preparedStatement.executeUpdate();
   	} catch (SQLException e) {
   	    e.printStackTrace();
   	} finally {
   	    try {
   		preparedStatement.close();
   		connection.close();
   	    } catch (Exception e2) {
   		e2.printStackTrace();
   	    }
   	}

   	return ri;
       }
    
    public int updateMemberPWC(MemberDto memberDto) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	connection = getConnection();
	String sql = "update member set pw=?, mod_date=?, reg_date=? where id = ?";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, memberDto.getPw());
	    preparedStatement.setString(2, memberDto.getMod_date());
	    preparedStatement.setString(3, memberDto.getReg_date());
	    preparedStatement.setString(4, memberDto.getId());
	    ri = preparedStatement.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

	return ri;
     }
    

    public int deleteMember(String id) {
	int ri = 0;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	connection = getConnection();
	String sql = "delete from member where id=? ";
	try {
	    preparedStatement = connection.prepareStatement(sql);
	    preparedStatement.setString(1, id);
	    ri = preparedStatement.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    try {
		preparedStatement.close();
		connection.close();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

	return ri;
    }

    private Connection getConnection() {
	Context context = null;
	DataSource dataSource = null;
	Connection connection = null;
	try {
	    context = new InitialContext();
	    dataSource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
	    connection = dataSource.getConnection();
	} catch (Exception e) {
	    e.printStackTrace();
	}

	return connection;
    }
}
