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
 * Servlet implementation class poststodb
 */
@WebServlet("/poststodb")
public class poststodb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//String post_id = request.getParameter("post_id");
		String post_content = request.getParameter("post_content");
		String post_date = request.getParameter("post_date");
		String post_topic = request.getParameter("post_topic");
		String post_by = request.getParameter("post_by");
		if(/*post_id.isEmpty()||*/post_content.isEmpty()||post_date.isEmpty()||post_topic.isEmpty()||post_by.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("Postwrt1.jsp");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("checkinfo.jsp");
			req.forward(request, response);
		}
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			 Statement stm = con.createStatement();
			 stm.executeUpdate("insert into posts(post_content,post_date,post_topic,post_by) values('"+post_content+"','"+post_date+"','"+post_topic+"','"+post_by+"')");
			 }
		catch(Exception e)
		{
			System.out.println(e);
			 
		}
	}

}
