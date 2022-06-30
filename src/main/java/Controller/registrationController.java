package Controller;

import java.io.IOException;

import BEAN.Member;
import DAO.registrationDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registrationController")
public class registrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
    public registrationController() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		định dạng UTF-8
		if(request.getCharacterEncoding()== null) {
			request.setCharacterEncoding("UTF-8");
		}
		
		String name = request.getParameter("UserName");
		String pass = request.getParameter("pass");
		String fullName = request.getParameter("fullName");
		
		
		
		Member member = new Member();
		member.setFullName(fullName);
		member.setMemberName(name);
		member.setMemberPass(pass);
		
		
		registrationDAO.insertMember(request, member);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("view/Login.jsp");
		rd.forward(request, response);
		
		
		
		
		
	}

}
