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


@WebServlet("/Login1Servlet")
public class Login1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String status;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","Eshwaran@123");
			PreparedStatement st = con.prepareStatement("select * from register where first_uname=? and first_email=? and first_pwd=?");
			st.setString(1, uname);
			st.setString(2, email);
			st.setString(3, pwd);
			ResultSet rs = st.executeQuery();
			
			String imageName="";
			int count=0;
			while(rs.next()) {
				count++;
				imageName=rs.getString("img_name");
			}
			

			if(count>0) {
				RequestDispatcher rd1;
				request.setAttribute("imageName", imageName);
				request.setAttribute("uname", uname);
				rd1=request.getRequestDispatcher("login2.jsp");
				rd1.forward(request, response);  
			}
			else {
				status="Enter valid username and password";
				RequestDispatcher rd2;
				request.setAttribute("status", status);
				rd2 = request.getRequestDispatcher("login1.jsp");
				rd2.forward(request, response);  
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
	}

}
