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
 * Servlet implementation class topics_write
 */
@WebServlet("/topics_write")
public class topics_write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    //String topic_id= request.getParameter("topic_id");
		String topic_subject = request.getParameter("topic_subject");
		String topic_date= request.getParameter("topic_date");
		String topic_cat= request.getParameter("topic_cat");
		String topic_by= request.getParameter("topic_by");
		if(/*topic_id.isEmpty()||*/topic_subject.isEmpty()||topic_date.isEmpty()||topic_cat.isEmpty()||topic_by.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("topicswrt1.jsp");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("checkinfo.jsp"); // here you have to give the address of where you can write post.
			req.forward(request, response);                                         // for now just giving the categories.jsp as address.
		}
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			 Statement stm = con.createStatement();
			 stm.executeUpdate("insert into topics(topic_subject,topic_date,topic_cat,topic_by) values('"+topic_subject+"','"+topic_date+"','"+topic_cat+"','"+topic_by+"')");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
