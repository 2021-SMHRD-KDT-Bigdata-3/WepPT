package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class calendarDAO {
	
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt=0;
	calendarDTO dto = null;
	ArrayList<calendarDTO> al = new ArrayList<calendarDTO>();
	
	// 데이터페이스와 연결
	public void conn() {
		try {
		// 1. JDBC 드라이버 동적로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
					
				String url = "jdbc:oracle:thin:@221.156.142.70:1521:xe";
				String user = "hr";
				String password = "hr";
					
				// 2. 데이터베이스 연결객체(Connection)생성
			    conn = DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

	//닫기
	public void close() {
		
		try {
			if(rs !=null) {rs.close();}
			pst.close();
			conn.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
	}

	
	public ArrayList<calendarDTO> select(String userId) {
		
		// 런타임오류 : 실행했을 때 발생하는 오류 > 예외처리
		try{
			conn();
			
		    String sql = "select * from calendar where calendar_userid = ?";
		                                             // ? : 바인드 변수
		    // 3. sql문 실행객체 ( PreparedStatement ) 생성
		    pst = conn.prepareStatement(sql);
		    pst.setString(1, userId);
			
		    // 4. 바인드 변수 채워주기
		    
		    // 5. sql문 실행하기
		    rs = pst.executeQuery();
		    
		    while ( rs.next() ) {
		    	String id = "[{'calendar_id':'" + rs.getString(1) + "',";
		    	String title = "'calendar_title':'" + rs.getString(2) + "',";
		    	String start = "'calendar_start':'" + rs.getString(3) + "',";
		    	String end = "'calendar_end':'" + rs.getString(4) + "',";
		    	String description = "'calendar_description':'" + rs.getString(5) + "',";
		    	String type = "'calendar_type':'" + rs.getString(6) + "',";
		    	String user = "'calendar_user':'" + rs.getString(7) + "',";
		    	String color = "'calendar_color':'" + rs.getString(8) + "',";
		    	String textColor = "'calendar_textColor':'" + rs.getString(9) + "'}]";
		    	
		    	
		    	
		    	calendarDTO dto = new calendarDTO(id, title, start, end, description, type, user, color, textColor);
		    	
		    	
		    	al.add(dto);
		    	
		    	System.out.println("우왕굳");
		    }
		    
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("에라이");
		}finally {
			// 열려있으면 닫아줄 수 없으므로 예외문 한번더
			close();
			
		}
		return al;
	}
	
	

}
