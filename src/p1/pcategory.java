package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pcategory
 */
@WebServlet("/pcategory")
public class pcategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String cat_id = request.getParameter("cat_id");
		String cat_name = request.getParameter("cat_name");
		String cat_description = request.getParameter("cat_description");
		if(cat_id.isEmpty()||cat_name.isEmpty()||cat_description.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("categories.jsp");
			req.include(request,response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("topicswrt.jsp");      // here you have to give the 
			req.forward(request,response);                                               // file name in which you will allow user to write the topic/question and below it will be post( which ofcourse will be written by another user.)
		} 
		
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			 Statement stm = con.createStatement();
			 stm.executeUpdate("insert into categories values('"+cat_id+"','"+cat_name+"','"+cat_description+"')");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
