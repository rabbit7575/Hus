package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DBManager;
import dto.ShopMemberDTO;

public class ShopMemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<ShopMemberDTO> list = new ArrayList<>();
	ShopMemberDTO mDto;
	public List<ShopMemberDTO> memSearch(String id) {
		try {
			conn=DBManager.getConnection();
			String sql = "SELECT * FROM shopmember where shopid=?";
			pstmt=conn.prepareStatement(sql);		
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String shopid = rs.getString("shopid");
				String shoppw = rs.getString("shoppw");
				String shopname = rs.getString("shopname");
				String shopzipcode = rs.getString("shopzipcode");
				String shopadd1 = rs.getString("shopadd1");
				String shopadd2 = rs.getString("shopadd2");
				String shopmail = rs.getString("shopmail");
				String shopphone = rs.getString("shopphone");
				Date shopregdate = rs.getDate("shopregdate");
				
				ShopMemberDTO mDto = new ShopMemberDTO(shopid, shoppw, shopname, shopzipcode, shopadd1, shopadd2, shopmail, shopphone, shopregdate);
				list.add(mDto);
			}
			for (ShopMemberDTO shopMemberDTO : list) {
				System.out.print(shopMemberDTO.getShopid());
				System.out.print(shopMemberDTO.getShoppw());
				System.out.print(shopMemberDTO.getShopname());
				System.out.print(shopMemberDTO.getShopzipcode());
				System.out.print(shopMemberDTO.getShopadd1());
				System.out.print(shopMemberDTO.getShopadd2());
				System.out.print(shopMemberDTO.getShopmail());
				System.out.print(shopMemberDTO.getShopphone());
				System.out.println();
			} 
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	public int idSearch(String id) {
		int result = 0;
		try {
			conn=DBManager.getConnection();
			String sql = "SELECT shopid FROM shopmember where shopid=?";
			pstmt=conn.prepareStatement(sql);		
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()==true){
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	
	
	public ShopMemberDTO ckLogin(String id, String pw) {
		try {
			conn=DBManager.getConnection();
			String sql = "SELECT * FROM shopmember where shopid=? and shoppw=? ";
			pstmt=conn.prepareStatement(sql);		
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
		/*	if(rs.next()==false){
				System.out.println("없음");
			}else{
				System.out.println("있음");
			}
			
			System.out.println(id+" : "+pw);*/
			while(rs.next()){
				String shopid = rs.getString("shopid");
				String shoppw = rs.getString("shoppw");
				String shopname = rs.getString("shopname");
				String shopzipcode = rs.getString("shopzipcode");
				String shopadd1 = rs.getString("shopadd1");
				String shopadd2 = rs.getString("shopadd2");
				String shopmail = rs.getString("shopmail");
				String shopphone = rs.getString("shopphone");
				Date shopregdate = rs.getDate("shopregdate");
				
				mDto = new ShopMemberDTO(shopid, shoppw, shopname, shopzipcode, shopadd1, shopadd2, shopmail, shopphone, shopregdate);
				System.out.print(shopid+ shoppw+ shopname+ shopadd1+shopzipcode +shopadd2+ shopmail+ shopphone+ shopregdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	public void memUpdate(ShopMemberDTO mDto) {
		try {
			conn=DBManager.getConnection();
			String sql = "update  shopmember "
					+ " set shoppw=?, shopname=?, shopzipcode=?, shopadd1=?,shopadd2=?,"
					+ " shopmail=?, shopphone=?"
					+ " where shopid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mDto.getShoppw());
			pstmt.setString(2,mDto.getShopname());
			pstmt.setString(3,mDto.getShopzipcode());
			pstmt.setString(4,mDto.getShopadd1());
			pstmt.setString(5,mDto.getShopadd2());
			pstmt.setString(6,mDto.getShopmail());
			pstmt.setString(7,mDto.getShopphone());
			pstmt.setString(8,mDto.getShopid());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt);
		}
	}
	public void memInsert(ShopMemberDTO mDto){
		try {
			conn = DBManager.getConnection();
			String sql ="insert into SHOPMEMBER(SHOPID, SHOPPW, SHOPNAME, shopzipcode ,SHOPADD1, SHOPADD2, SHOPMAIL, SHOPPHONE)"
			+ "VALUES(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,mDto.getShopid());
			pstmt.setString(2,mDto.getShoppw());
			pstmt.setString(3,mDto.getShopname());
			pstmt.setString(4,mDto.getShopzipcode());
			pstmt.setString(5,mDto.getShopadd1());
			pstmt.setString(6,mDto.getShopadd2());
			pstmt.setString(7,mDto.getShopmail());
			pstmt.setString(8,mDto.getShopphone());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt);
		}
	}
}
