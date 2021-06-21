package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CommunityDAO {
	
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

			
			//커뮤니티 글작성
			public int CommunityPlus(int num, String title, String id, String filename, String content) {

				// 런타임오류 : 실행했을 때 발생하는 오류 -> 예외처리
				try {
					conn();
					
					String sql = "insert into member values(?,?,?,?,?)";
					// 3. sql문 실행객체(Prepared Statement)생성
					pst = conn.prepareStatement(sql);

					// 4. 바인드 변수 채우기
					pst.setInt(1, num);
					pst.setString(2, title);
					pst.setString(3, id);
					pst.setString(4, filename);
					pst.setString(5, content);
					
					
					// 5. sql문 실행하여 결과처리
					cnt = pst.executeUpdate();

				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("memberDAO 오류");
				} finally {
					close();
				}
				return cnt;
			}
			
			
			
			
			
			
			
			
			

}
