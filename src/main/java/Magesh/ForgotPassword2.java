package Magesh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ForgotPassword2")
public class ForgotPassword2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		System.out.println("Call Successfully... "+ email);
		RequestDispatcher rd;
		request.setAttribute("email",email);
		rd = request.getRequestDispatcher("confirmPwd2.jsp");
		rd.forward(request,response);
	}

}
