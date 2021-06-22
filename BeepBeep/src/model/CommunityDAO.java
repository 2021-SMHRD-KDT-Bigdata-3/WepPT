package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

public class CommunityDAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
	memberDTO dto =null;
	int cnt=0;
	
	
	
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
			public int CommuWrite(CommunityDTO commudto) {

				// 런타임오류 : 실행했을 때 발생하는 오류 -> 예외처리
				try {
					conn();
					
					
					
					String sql = "insert into community values(num_board.nextval, ?,?,?,?, sysdate )";
					// 3. sql문 실행객체(Prepared Statement)생성
					pst = conn.prepareStatement(sql);
					

					// 4. 바인드 변수 채우기
					pst.setString(1, commudto.getTitle());
					pst.setString(2, commudto.getId());
					pst.setString(3, commudto.getFilename());
					pst.setString(4, commudto.getContent());
					
					System.out.println(commudto.getTitle());
					System.out.println(commudto.getId());
					System.out.println(commudto.getFilename());
					System.out.println(commudto.getContent());
					
					// 5. sql문 실행하여 결과처리
					cnt = pst.executeUpdate();

				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("커뮤니티 작성 오류ㅠ");
				} finally {
					close();
				}
				return cnt;
			}
			
			
			
			
			
			
			
			
			

}
