package file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class FileDAO {//Database Access Object(service)
		private Connection conn;
		
		public FileDAO() {
			try {
				String dbURL="jdbc:mysql://walab.handong.edu/PP1_21800637";
				String dbID="PP1_21800637";
				String dbPassword="oju3Ing8";
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}
		
		public int upload(String fileName, String fileRealName) {
			String SQL="INSERT INTO FILE VALUES (?, ?) ";
			
			try {
				PreparedStatement pstmt =conn.prepareStatement(SQL);
				pstmt.setNString(1, fileName);
				pstmt.setNString(2, fileRealName);
				return pstmt.executeUpdate();//정상 실행시 1반환
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;//오류시 -1 반환
		}
		

	}
