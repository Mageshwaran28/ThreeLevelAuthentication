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


@WebServlet("/CpwdForgot3")
public class CpwdForgot3 extends HttpServlet {
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
				rd=request.getRequestDispatcher("forgot3.jsp");  
		        rd.forward(request, response);  
				return;
			}
			PreparedStatement ps = con.prepareStatement("update register set third_pwd=? where first_email=?");
			System.out.println("Connection Succesfull");
			ps.setString(1, pwd);
			ps.setString(2, email);
			System.out.println("Set Succesfull");
			int res = ps.executeUpdate();
			System.out.println("Execute Succesfully");
			if(res>0) {
				String uname="";
				PreparedStatement pst1 = con.prepareStatement("select * from register where first_email=?");
				pst1.setString(1,email);
				ResultSet rs2 = pst1.executeQuery();
				while(rs2.next())
					uname =rs2.getString("first_uname");
				RequestDispatcher rd;
				request.setAttribute("uname", uname);
				rd=request.getRequestDispatcher("login3.jsp");  
		        rd.forward(request, response);  
			}

		}
		catch(Exception e) {
			System.out.println("Exception in catch "+e);
		}
	}

}
