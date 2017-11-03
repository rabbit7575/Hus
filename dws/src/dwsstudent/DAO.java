package dwsstudent;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class DAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<DTO> list = new ArrayList<DTO>();
	
	public int Insert(DTO sDto) {
		int result = 0;
		try {
			// 1. 접속
			conn = DBManager.getConnection();
			String sql = "INSERT INTO DWSSTUDENTS(ID, NAME, AGE, MAJOR, PHONE) VALUES(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sDto.getId());
			pstmt.setString(2, sDto.getName());
			pstmt.setInt(3, sDto.getAge());
			pstmt.setString(4, sDto.getMajor());
			pstmt.setString(5, sDto.getPhone());
			// 4.
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	public int Update(DTO sDto) {
		int result = 0;
		try {
			// 1. 접속
			conn = DBManager.getConnection();
			String sql = "update DWSSTUDENTS set name=?,age=?, major=?,phone=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sDto.getName());
			pstmt.setInt(2, sDto.getAge());
			pstmt.setString(3, sDto.getMajor());
			pstmt.setString(4, sDto.getPhone());
			pstmt.setString(5, sDto.getId());
			// 4.
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	public int Delete(DTO sDto) {
		int result = 0;
		try {
			conn = DBManager.getConnection();
			String sql = "delete from DWSSTUDENTS where id = ? and name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sDto.getId());
			pstmt.setString(2, sDto.getName());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	public ArrayList<DTO> AllSelect() {
		try {
			conn = DBManager.getConnection();
			String sql = "select * from DWSSTUDENTS";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String major = rs.getString("major");
				String phone = rs.getString("phone");
				Date regdate = rs.getDate("regdate");
				DTO sDto = new DTO(id, name, age, major, phone, regdate);
				list.add(sDto);
			}
			for (DTO lists : list) {
				System.out.println(lists.getId());
				System.out.println(lists.getName());
				System.out.println(lists.getAge());
				System.out.println(lists.getMajor());
				System.out.println(lists.getPhone());
				System.out.println(lists.getRegdate());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	public ArrayList<DTO> Select(DTO sDto) {
		try {
			conn = DBManager.getConnection();
			String sql = "select * from DWSSTUDENTS where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sDto.getId());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String major = rs.getString("major");
				String phone = rs.getString("phone");
				Date regdate = rs.getDate("regdate");
				sDto = new DTO(id, name, age, major, phone, regdate);
				list.add(sDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
}
