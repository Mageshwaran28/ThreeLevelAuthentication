package Magesh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login2Servlet")
public class Login2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Method call successfully");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("secondPwd");
		String imgName = request.getParameter("imgName");
		String status;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/image","root","Eshwaran@123");
			PreparedStatement st = con.prepareStatement("select * from register where first_uname=? and second_pwd=?");
			st.setString(1, uname);
			st.setString(2, pwd);
			ResultSet rs = st.executeQuery();
			int count=0;
			while(rs.next()) {
				count++;
			}

			if(count>0) {
				RequestDispatcher rd1;
				request.setAttribute("uname", uname);
				rd1=request.getRequestDispatcher("login3.jsp");
				rd1.forward(request, response);  
			}
			else {
				status="Click valid  correct sequence points";
				RequestDispatcher rd2;
				request.setAttribute("status", status);
				request.setAttribute("imageName", imgName);
				request.setAttribute("uname", uname);
				rd2 = request.getRequestDispatcher("login2.jsp");
				rd2.forward(request, response);  
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}

	}

}
