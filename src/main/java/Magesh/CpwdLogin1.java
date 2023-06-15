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


@WebServlet("/CpwdLogin1")
public class CpwdLogin1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		int count=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","Eshwaran@123");
			
			PreparedStatement pst = con.prepareStatement("select * from register where first_email=?");
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				count++;
			if(count==0) {
				String status="This username is not exist";
				RequestDispatcher rd;
				request.setAttribute("status", status);
				rd=request.getRequestDispatcher("login1.jsp");  
		        rd.forward(request, response);  
				return;
			}
			PreparedStatement ps = con.prepareStatement("update register set first_pwd=? where first_email=?");
			System.out.println("Connection Succesfull");
			ps.setString(1, pwd);
			ps.setString(2, email);
			System.out.println("Set Succesfull");
			int res = ps.executeUpdate();
			System.out.println("Execute Succesfully");
			if(res>0) {
				RequestDispatcher rd;
				rd=request.getRequestDispatcher("login1.jsp");  
		        rd.forward(request, response);  
			}

		}
		catch(Exception e) {
			System.out.println("Exception in catch "+e);
		}
	}

}
