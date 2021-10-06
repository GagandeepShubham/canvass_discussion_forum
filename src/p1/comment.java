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
 * Servlet implementation class comment
 */
@WebServlet("/comment")
public class comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String cmt_id= request.getParameter("cmt_id");
		String username = request.getParameter("username");
		String email_id = request.getParameter("email_id");
		String date = request.getParameter("date");
		String comment = request.getParameter("comment");
		if(cmt_id.isEmpty()||username.isEmpty()||email_id.isEmpty()||date.isEmpty()||comment.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("comments.jsp");
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
			 stm.executeUpdate("insert into comments(cmt_id,username,email_id,date,comment) values('"+cmt_id+"','"+username+"','"+email_id+"','"+date+"','"+comment+"')");
			 }
		catch(Exception e)
		{
			System.out.println(e);
			 
		}
	
		
	}

}
