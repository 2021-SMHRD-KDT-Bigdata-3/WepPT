package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class calendarDAO {
	
	
	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pst = null;
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

	
	// �μ�Ʈ�� ����Ʈ ����Ʈ --
	
	
	

}