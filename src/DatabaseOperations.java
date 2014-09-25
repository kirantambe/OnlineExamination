import java.sql.*;
public class DatabaseOperations {
	public static Connection connect()
	{
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/onlineexamination";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
			con=DriverManager.getConnection(url,"root","");
			System.out.print("Connection established");					}
		catch(Exception e)
		{
			
		}
		return con;
	}
	
}
