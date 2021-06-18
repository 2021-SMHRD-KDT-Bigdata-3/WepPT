package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class youtubeDAO {
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt=0;
	youtubeDTO dto =null;
	ArrayList<youtubeDTO> al = new ArrayList<youtubeDTO>();

	
	
	// ���������̽��� ����
		public void conn() {
			try {
			// 1. JDBC ����̹� �����ε�
					Class.forName("oracle.jdbc.driver.OracleDriver");
						
					String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String user = "hr";
					String password = "hr";
						
					// 2. �����ͺ��̽� ���ᰴü(Connection)����
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
		
		


		public ArrayList<youtubeDTO> select() {
			
			// ��Ÿ�ӿ��� : �������� �� �߻��ϴ� ���� > ����ó��
			try{
				conn();
				
			    String sql = "select * from youtube";
			                                             // ? : ���ε� ����
			    // 3. sql�� ���ఴü ( PreparedStatement ) ����
			    pst = conn.prepareStatement(sql);
			    
			    // 4. sql�� �����ϱ�
			    rs = pst.executeQuery();
			    
			    while ( rs.next() ) {
			    	String category = rs.getString("category");
			    	String link = rs.getString("link");
			    	String part = rs.getString("part");
			    	String gender = rs.getString("gender");
			    	
			    	dto =new youtubeDTO(category, link, part, gender);
			    	
			    	// �迭(���� �����ؾ���) and Arraylist(�������� �ʿ����)
			    	al.add(dto); // ��̸���Ʈ�� ��� �����
			    	
			    }
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("fail");
			}finally {
				// ���������� �ݾ��� �� �����Ƿ� ���ܹ� �ѹ���
					close();
		}
			return al;
		}
		
		
		
		
		
		
		
		
		
}
