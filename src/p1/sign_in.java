package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sign_in
 */
@WebServlet("/sign_in")
public class sign_in extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		// Connect to mysql and verify username password
		
				try {
					Class.forName("com.mysql.jdbc.Driver");
				 // loads driver
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); // gets a new connection
		 
				PreparedStatement ps = c.prepareStatement("select username,password from login where username=? and password=?");
				ps.setString(1, un);
				ps.setString(2, pw);
		 
				ResultSet rs = ps.executeQuery();
		 
				while (rs.next()) {
					RequestDispatcher res = request.getRequestDispatcher("register_4.jsp");
					res.forward(request, response);
				}
				response.sendRedirect("error1.jsp");
				return;
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

}
