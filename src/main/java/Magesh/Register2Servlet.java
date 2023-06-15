package Magesh;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig
@WebServlet("/Register2Servlet")
public class Register2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post method call Successfully");
		String pwd = request.getParameter("secondPwd");
		String uname = request.getParameter("uname");
		Part file=request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		int count=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root", "Eshwaran@123");
			PreparedStatement pst = con.prepareStatement("select * from register where img_name=?");
			pst.setString(1,imageFileName);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				count++;
			if(count>0) {
				System.out.println(imageFileName);
				String status="This image name already exist please change image or image name";
				RequestDispatcher rd;
				request.setAttribute("status", status);
				request.setAttribute("uname", uname);
				rd=request.getRequestDispatcher("register2.jsp");  
		        rd.forward(request, response);  
				return;
			}
			
			else {
				System.out.println("Else condition call successful");
				PreparedStatement ps = con.prepareStatement("update register set second_pwd=? where first_uname=?");
				System.out.println("Connection Succesfull");
				ps.setString(1, pwd);
				ps.setString(2, uname);
				System.out.println("Set Succesfull");
				int res = ps.executeUpdate();
				System.out.println("Execute Succesfully");
				if(res>0) {
					RequestDispatcher rd;
					request.setAttribute("uname", uname);
					rd=request.getRequestDispatcher("register3.jsp");  
			        rd.forward(request, response);  
				}
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		String uploadPath="D:/eclipse projects/ImageTutorial/src/main/webapp/images/"+imageFileName;
		
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","Eshwaran@123");
			PreparedStatement st = con.prepareStatement("update register set img_name=? where first_uname=?");
			st.setString(1, imageFileName);
			st.setString(2, uname);
			int row = st.executeUpdate();
			if(row>0) {
				System.out.println("Image added into database successfully");
			}
			else {
				System.out.println("Failed to upload image.");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
