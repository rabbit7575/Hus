package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DBManager;
import dto.ProductDTO;

public class ProductDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<ProductDTO> newlist = new ArrayList<ProductDTO>();
	List<ProductDTO> bestlist = new ArrayList<ProductDTO>();

	public List<ProductDTO> listNewProduct() {
		try {
			conn=DBManager.getConnection();
			String sql="SELECT * FROM new_pro_view";
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			newlist.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				
				ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
				newlist.add(pDto);
			}
/*			for(ProductDTO productDTO : newlist){
					System.out.print(productDTO.getP_code());
					System.out.print(productDTO.getP_name());
					System.out.print(productDTO.getP_price2());
					System.out.print(productDTO.getP_img());
					System.out.println();
				}*/
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return newlist;
	}

	public List<ProductDTO> listBestProduct() {
		try {
			conn=DBManager.getConnection();
			String sql="SELECT * FROM best_pro_view";
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			bestlist.clear();
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				
				ProductDTO pDto = new ProductDTO(p_code, p_name, p_price2, p_img);
				bestlist.add(pDto);
			}
/*			for(ProductDTO productDTO : bestlist){
					System.out.print(productDTO.getP_code());
					System.out.print(productDTO.getP_name());
					System.out.print(productDTO.getP_price2());
					System.out.print(productDTO.getP_img());
					System.out.println();
				}*/
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bestlist;
		
	}
}
