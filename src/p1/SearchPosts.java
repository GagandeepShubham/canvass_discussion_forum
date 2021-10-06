package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class SearchPosts
 */
@WebServlet("/SearchPosts")
public class SearchPosts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request,response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "project";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";
        
        Statement st;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected!");
            String pid1 = request.getParameter("pid1");
            
            ArrayList al1=null;
            ArrayList pid_list1 = new ArrayList();
            String query1="select topic_id,topic_subject,topic_date,topic_by from topics where topic_id='"+ pid1 + "'";
            System.out.println("query1 " + query1);
            st = (Statement) conn.createStatement();
            ResultSet rs1 = st.executeQuery(query1);
            while (rs1.next()) {
                al1 = new ArrayList();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al1.add(rs1.getString(1));
                al1.add(rs1.getString(2));
                al1.add(rs1.getString(3));
                al1.add(rs1.getString(4));
 
                System.out.println("al1 :: " + al1);
                pid_list1.add(al1);
            }
 
            request.setAttribute("piList1", pid_list1);
            RequestDispatcher view1 = request.getRequestDispatcher("/postview.jsp");
            
           // conn.close();
            
            
            ArrayList al = null;
            ArrayList pid_list = new ArrayList();
            String query = "select post_content,post_date,post_by from posts where post_topic='" + pid1 + "' ";
  
            System.out.println("query " + query);
            st = (Statement) conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while (rs.next()) {
                al = new ArrayList();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
             //   al.add(rs.getString(4));
 
                System.out.println("al :: " + al);
                pid_list.add(al);
            }
 
            request.setAttribute("piList", pid_list);
            RequestDispatcher view = request.getRequestDispatcher("/postview.jsp");
            
           // conn.close();
            
            ArrayList al2 = null;
            ArrayList pid_list2 = new ArrayList();
            String query2= "select username,date,comment from comments where cmt_id='" + pid1 +"' ";
            System.out.println("query2" + query2);
            st = (Statement) conn.createStatement();
            ResultSet rs2 = st.executeQuery(query2);
            while (rs2.next()) {
                al2 = new ArrayList();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al2.add(rs2.getString(1));
                al2.add(rs2.getString(2));
                al2.add(rs2.getString(3));
             //   al.add(rs.getString(4));
 
                System.out.println("al2 :: " + al2);
                pid_list2.add(al2);
            }
            request.setAttribute("piList2", pid_list2);
            RequestDispatcher view2 = request.getRequestDispatcher("/postview.jsp");
            view1.forward(request, response);
            view.forward(request, response);
            view2.forward(request, response);
            
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}
