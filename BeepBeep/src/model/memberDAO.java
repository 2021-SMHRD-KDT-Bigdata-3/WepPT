package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class memberDAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt=0;
	memberDTO dto =null;
	
	// 데이터페이스와 연결
		public void conn() {
			try {
			// 1. JDBC 드라이버 동적로딩
					Class.forName("oracle.jdbc.driver.OracleDriver");
						
					String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String user = "hr";
					String password = "hr";
						
					// 2. 데이터베이스 연결객체(Connection)생성
				    conn = DriverManager.getConnection(url, user, password);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		public void close() {
			
			try {
				if(rs !=null) {rs.close();}
				pst.close();
				conn.close();
				
				}catch(Exception e) {
					e.printStackTrace();
				}
		}

		
		
		
		public memberDTO login(String id, String pw) {
			try{
				conn();
				
			    String sql = "select * from member where id = ? and pw = ?";
			    pst = conn.prepareStatement(sql);
			    pst.setString(1, id);
			    pst.setString(2, pw);
			    
			    rs = pst.executeQuery();
			    
			    if ( rs.next() ) {
			    	String get_id = rs.getString("id");
			    	String get_pw = rs.getString("pw");
			    	
			    	dto = new memberDTO(get_id, get_pw);
			    	
			    	System.out.println("로그인 성공");
			    }
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("로그인 실패");
			}finally {
				// 열려있으면 닫아줄 수 없으므로 예외문 한번더
				close();
			}
			return dto;
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

}
