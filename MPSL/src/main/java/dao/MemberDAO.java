package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JdbcUtil;
import vo.MemberVO;

public class MemberDAO {
	public MemberVO getMemberData(String email) {
		MemberVO vo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM member WHERE member_email=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new MemberVO();
				vo.setMemberEmail(rs.getString("member_email"));
				vo.setMemberPwd(rs.getString("member_pwd"));
				vo.setMemberName(rs.getString("member_name"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}

	public boolean existID(String email) {
		boolean isExist = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM member WHERE member_email=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isExist = true;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("checkLoginUser : sql error");
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return isExist;
	}
	
	public int removeMember(String email) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "DELETE FROM member WHERE member_email=?";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int insertMember(MemberVO data) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO member(member_email, member_pwd, member_name, member_age) values(?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, data.getMemberEmail());
			pstmt.setString(2, data.getMemberPwd());
			pstmt.setString(3, data.getMemberName());
			pstmt.setInt(4, data.getMemberAge());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}