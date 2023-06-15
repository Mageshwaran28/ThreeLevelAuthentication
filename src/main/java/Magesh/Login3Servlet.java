package Magesh;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/Login3Servlet")
public class Login3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Method call successfully");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String status;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","Eshwaran@123");
			PreparedStatement st = con.prepareStatement("select * from register where first_uname=? and third_pwd=?");
			st.setString(1, uname);
			st.setString(2, pwd);
			ResultSet rs = st.executeQuery();
			
			int count=0;
			while(rs.next()) {
				count++;
			}
			

			if(count>0) {
//				PrintWriter out = response.getWriter();
//				out.println("<!DOCTYPE html>\r\n"
//						+ "<html lang=\"en\">\r\n"
//						+ "<head>\r\n"
//						+ "    <title>login success</title>\r\n"
//						+ "    <style>\r\n"
//						+ "        body{\r\n"
//						+ "            margin: 0;\r\n"
//						+ "            padding: 0;\r\n"
//						+ "            font-family: sans-serif;\r\n"
//						+ "            height: 100dvh;\r\n"
//						+ "            display: grid;\r\n"
//						+ "            place-items: center;\r\n"
//						+ "            background-color:  #1D1E22;;            \r\n"
//						+ "        }\r\n"
//						+ "\r\n"
//						+ "        .container{\r\n"
//						+ "            background: #fff;\r\n"
//						+ "            padding: 40px;\r\n"
//						+ "            background: linear-gradient(45deg,#40c9ff,#e81cff);\r\n"
//						+ "            border-radius: 8px ;\r\n"
//						+ "            color: #fff;\r\n"
//						+ "        }\r\n"
//						+ "\r\n"
//						+ "\r\n"
//						+ "    </style>\r\n"
//						+ "</head>\r\n"
//						+ "<body>\r\n"
//						+ "    <div class=\"container\">\r\n"
//						+ "        <h2>Hello! "+ uname +"</h2>\r\n"
//						+ "        <h3>Login Sccessfully... </h3>\r\n"
//						+ "    </div>\r\n"
//						+ "</body>\r\n"
//						+ "</html>");
				RequestDispatcher rd = request.getRequestDispatcher("bank.jsp");
				rd.forward(request, response);
			}
			else {
				status = "Invalid Password ";
				RequestDispatcher rd2;
				request.setAttribute("uname", uname);
				request.setAttribute("status", status);
				rd2=request.getRequestDispatcher("login3.jsp");
				rd2.forward(request, response);  
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
	}

}
