package project.com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class MemberDAOimpl implements MemberDAO {

	private Connection conn = null;
//	private Statement stmt = null;//정적쿼리처리 객체
	private PreparedStatement pstmt = null;// 동적쿼리 처리 객체
//	private CallableStatement cstmt = null;//sql 프로시저 콜 객체
	private ResultSet rs = null;

	private final String DRIVER_NAME = "oracle.jdbc.OracleDriver";
	private final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String USER = "project";
	private final String PASSWORD = "hi123456";
	
	private final String SQL_INSERT = "insert into member values(?,?)";
	
	private final String SQL_SELECT_ONE = "select * from member where member_id=? and member_pw=?";

	private final String SQL_DELETE = "delete from member where num=?";
	
	public MemberDAOimpl() {
		System.out.println("MemberDAOimpl()");
		try {
			Class.forName(DRIVER_NAME);
			System.out.println("driver successed...");
		} catch (ClassNotFoundException e) {
			System.out.println("driver failed...");
			e.printStackTrace();
		}
	}
	
	@Override
	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO selectOne(MemberVO vo) {
		System.out.println("selectOne()...");
		
		MemberVO vo2 = new MemberVO();

		try {
			// 2. 커넥션
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("conn successed...");

			// 3. SQL 설정
			pstmt = conn.prepareStatement(SQL_SELECT_ONE);
			System.out.println(vo.getMemberpw());
			pstmt.setString(1,vo.getMemberid());
			pstmt.setString(2,vo.getMemberpw());
			// 4. DB처리 결과반환
			rs = pstmt.executeQuery();// select
			
			System.out.println(rs);
	
			while (rs.next()) {

				System.out.println(rs.getString("member_id")+"----");
				vo2.setMemberid(rs.getString("member_id"));

				vo2.setMemberpw(rs.getString("member_pw"));
				System.out.println(vo2.getMemberpw());
				vo2.setMemberemail(rs.getString("member_email"));
			}

		} catch (SQLException e) {
			System.out.println("conn failed...");
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}

		return vo2;
	}

	@Override
	public int delete(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
