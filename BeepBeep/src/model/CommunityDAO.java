package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class CommunityDAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
	ArrayList<CommunityDTO> al = new ArrayList<CommunityDTO>();
	memberDTO dto =null;
	int cnt=0;
	
	
	
			// ���������̽��� ����
			public void conn() {
				try {
				// 1. JDBC ����̹� �����ε�
						Class.forName("oracle.jdbc.driver.OracleDriver");
							
						String url = "jdbc:oracle:thin:@221.156.142.70:1521:xe";
						String user = "hr";
						String password = "hr";
							
						// 2. �����ͺ��̽� ���ᰴü(Connection)����
					    conn = DriverManager.getConnection(url, user, password);
				}catch(Exception e) {
					e.printStackTrace();
					
				}
			}
	
			//�ݱ�
			public void close() {
				
				try {
					if(rs !=null) {rs.close();}
					pst.close();
					conn.close();
					
					}catch(Exception e) {
						e.printStackTrace();
					}
			}

			
			//Ŀ�´�Ƽ ���ۼ�
			public int CommuWrite(CommunityDTO commudto) {

				// ��Ÿ�ӿ��� : �������� �� �߻��ϴ� ���� -> ����ó��
				try {
					conn();
					
					String sql = "insert into community values(num_board.nextval, ?,?,?,?, sysdate )";
					// 3. sql�� ���ఴü(Prepared Statement)����
					pst = conn.prepareStatement(sql);
					

					// 4. ���ε� ���� ä���
					pst.setString(1, commudto.getTitle());
					pst.setString(2, commudto.getId());
					pst.setString(3, commudto.getFilename());
					pst.setString(4, commudto.getContent());
					
					System.out.println(commudto.getTitle());
					System.out.println(commudto.getId());
					System.out.println(commudto.getFilename());
					System.out.println(commudto.getContent());
					
					// 5. sql�� �����Ͽ� ���ó��
					cnt = pst.executeUpdate();

				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("Ŀ�´�Ƽ �ۼ� ������");
				} finally {
					close();
				}
				return cnt;
			}
			
			
			
			
			public ArrayList<CommunityDTO> select() {
				try {
					conn();
					
					String sql = "select * from Community";
					
					pst = conn.prepareStatement(sql);
					
					rs = pst.executeQuery();
					
					while(rs.next()){
						int num = rs.getInt("num");
						String title = rs.getString("title");
						String id = rs.getString("id");
						String filename = rs.getString("filename");
						String content = rs.getString("content");
						String day = rs.getString("day");
						
						CommunityDTO dto = new CommunityDTO(num, title, id, filename, content, day);
						
						al.add(dto);
						
					}		
				}catch(Exception e){
					e.printStackTrace();
				}finally {
					close();
				}
				return al;
			}	

			
			
}