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
			public int CommunityPlus(int num, String title, String id, String filename, String content) {

				// ��Ÿ�ӿ��� : �������� �� �߻��ϴ� ���� -> ����ó��
				try {
					conn();
					
					String sql = "insert into member values(?,?,?,?,?)";
					// 3. sql�� ���ఴü(Prepared Statement)����
					pst = conn.prepareStatement(sql);

					// 4. ���ε� ���� ä���
					pst.setInt(1, num);
					pst.setString(2, title);
					pst.setString(3, id);
					pst.setString(4, filename);
					pst.setString(5, content);
					
					
					// 5. sql�� �����Ͽ� ���ó��
					cnt = pst.executeUpdate();

				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("memberDAO ����");
				} finally {
					close();
				}
				return cnt;
			}
			
			
			
			
			
			
			
			
			

}
