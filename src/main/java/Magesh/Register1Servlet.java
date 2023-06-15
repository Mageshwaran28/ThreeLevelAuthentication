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


@WebServlet("/Register1Servlet")
public class Register1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Register1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		int count=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","Eshwaran@123");
			
			PreparedStatement pst = con.prepareStatement("select * from register where first_uname=?");
			pst.setString(1,uname);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				count++;
			if(count>0) {
				String status="This username is already exist";
				RequestDispatcher rd;
				request.setAttribute("status", status);
				rd=request.getRequestDispatcher("register1.jsp");  
		        rd.forward(request, response);  
				return;
			}
			PreparedStatement ps = con.prepareStatement("insert into register (first_uname,first_email,first_pwd) values(?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, pwd);
			int res = ps.executeUpdate();
			if(res>0) {
				RequestDispatcher rd;
				request.setAttribute("uname", uname);
				rd=request.getRequestDispatcher("register2.jsp");  
		        rd.forward(request, response);  
			}
		}
		catch(Exception e) {
			System.out.println("Exception in catch "+e);
		}
	}

}
