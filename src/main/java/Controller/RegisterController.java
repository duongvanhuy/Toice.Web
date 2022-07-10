package Controller;

import java.io.IOException;

import BEAN.Member;
import DAO.RegistrationDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
    public RegisterController() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		định dạng UTF-8
		if(request.getCharacterEncoding()== null) {
			request.setCharacterEncoding("UTF-8");
		}
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Member member = new Member();
		member.setEmail(email);
		member.setMemberPass(password);
		
		boolean cherckRegister = RegistrationDAO.insertMember(request, member);
		RequestDispatcher rd = null;
		if(cherckRegister) {
			 rd = request.getRequestDispatcher("view/Login.jsp");
		}else {
			rd = request.getRequestDispatcher("view/Register.jsp");
		}
		rd.forward(request, response);
		
	}

}
