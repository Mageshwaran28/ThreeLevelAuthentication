package Magesh;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Register3Servlet")
public class Register3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post method call succesfully");
		String pwd = request.getParameter("pwd");
		String uname = request.getParameter("uname");
		System.out.println(pwd+" "+uname);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root", "Eshwaran@123");
			PreparedStatement ps = con.prepareStatement("update register set third_pwd=? where first_uname=?");
			System.out.println("Connection Succesfull");
			ps.setString(1, pwd);
			ps.setString(2, uname);
			System.out.println("Set Succesfull");
			int res = ps.executeUpdate();
			System.out.println("Execute Succesfully");
			if(res>0) {
//				IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
//				IProject project = root.getProject("ImageTutorial");
//				project.refreshLocal(IResource.DEPTH_INFINITE, null);
				
				PrintWriter out = response.getWriter();
				out.println("<!DOCTYPE html>\r\n"
						+ "<html lang=\"en\">\r\n"
						+ "<head>\r\n"
						+ "    <title>login success</title>\r\n"
						+ "    <style>\r\n"
						+ "        body{\r\n"
						+ "            margin: 0;\r\n"
						+ "            padding: 0;\r\n"
						+ "            font-family: sans-serif;\r\n"
						+ "            height: 100dvh;\r\n"
						+ "            display: grid;\r\n"
						+ "            place-items: center;\r\n"
						+ "            background-color:  #1D1E22;;            \r\n"
						+ "        }\r\n"
						+ "\r\n"
						+ "        .container{\r\n"
						+ "            background: #fff;\r\n"
						+ "            padding: 40px;\r\n"
						+ "            background: linear-gradient(45deg,#40c9ff,#e81cff);\r\n"
						+ "            border-radius: 8px ;\r\n"
						+ "            color: #fff;\r\n"
						+ "        }button{\r\n"
						+ "            padding: 6px 15px;\r\n"
						+ "            font-size: smaller;\r\n"
						+ "            color: #e81cff;\r\n"
						+ "            cursor: pointer;\r\n"
						+ "            border: none;\r\n"
						+ "            border-radius: 5px;\r\n"
						+ "        }\r\n"
						+ "\r\n"
						+ "\r\n"
						+ "    </style>\r\n"
						+ "</head>\r\n"
						+ "<body>\r\n"
						+ "    <div class=\"container\">\r\n"
						+ "        <h2>Hello! "+ uname +"</h2>\r\n"
						+ "        <h3>Registered Sccessfully... </h3>\r\n"
						+ "			<button onclick=\"fun()\">LOGIN</button>\r\n"
						+ "    </div>\r\n"
						+ "</body><script>\r\n"
						+ "    function fun(){\r\n"
						+ "        location.href=\"login1.jsp\";\r\n"
						+ "			onClick=\"window.location.reload()\"\r\n"
						+ "    }\r\n"
						+ "</script>\r\n"
						+ "</html>");
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
