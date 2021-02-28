package DB;
import java.sql.*;
public class DBConnection {
	public static Connection getConnection() throws SQLException {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/question";
		String username="root";
		String password="778899";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
