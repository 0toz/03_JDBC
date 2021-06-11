package com.ict.db2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {

	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	private static DAO dao = new DAO();
	public static DAO getInstance() {
		return dao;
		
	}
	
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@192.168.4:1521:xe";
			String user = "c##owl";
			String password = "1111";
			conn = DriverManager.getConnection(url,user, password);
			return conn;
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return null;
		
	}
	
	
	public int getInsert(VO vo) {
		try {
			int result = 0 ;
			conn = getConnection();
			String sql = "insert into testdb values(testdb_seq.nextval,?,?,sysdate,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			
			pstm.setString(1,vo.getName() );
			pstm.setString(2,vo.getArt() );
			pstm.setString(3,vo.getEmail() );
			pstm.setString(4,vo.getPw() );
			pstm.setString(5,vo.getText() );
			
			result = pstm.executeUpdate();
			return result;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return 0;
	}
	
	
	public int getDelete(String idx) {
		try {
			int result = 0 ;
			conn = getConnection();
			String sql = "delete from testdb where idx =?";
			pstm=conn.prepareStatement(sql);
			pstm.setString(1,idx);
			
			result = pstm.executeUpdate();
			return result;
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return 0;
	}
	public int getUpdate(VO vo) {
		try {
			int result = 0;
			conn = getConnection();
			String sql = "update guestbook set name=?,art=?,text=?,email=? where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getArt());
			pstm.setString(3, vo.getText());
			pstm.setString(4, vo.getEmail());
			pstm.setString(5, vo.getIdx());
			result = pstm.executeUpdate();
			return result;
		} catch (Exception e) {
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return 0;
	}
	
	public List<VO> getSelectAll(){
		try {
			
			List <VO> list = new ArrayList<VO>();
			conn = getConnection();
			String sql = "select * from testdb order by idx	";
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setArt(rs.getString("art"));
				vo.setText(rs.getString("text"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setReg(rs.getString("reg"));
				list.add(vo);
			}
			
			
			return list;

					
		
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return null;
	}
	
	
	public VO getSelectOne(String idx){
		try {
			VO vo = null;
			conn = getConnection();
			String sql = "select * from testdb where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,idx);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setArt(rs.getString("art"));
				vo.setText(rs.getString("text"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setReg(rs.getString("reg"));
			}
			
			
			return vo;

					
		
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return null;
	}
	
	
	
	
	
	
}
