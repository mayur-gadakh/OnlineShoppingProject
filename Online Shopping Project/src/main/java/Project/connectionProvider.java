package Project;
import java.sql.*;
public class connectionProvider {

	public static Connection getCon(){
		
		Connection con=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/osp","root","12345");
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
}
