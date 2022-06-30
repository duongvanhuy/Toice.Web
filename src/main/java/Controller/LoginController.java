package Controller;

import java.io.IOException;

import BEAN.Member;
import DAO.LoginDAO;
import DAO.MemberDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public LoginController() {
  
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Member  member = new Member();
		
		member.setEmail(email);
		member.setMemberPass(password);
		
		
		// check
		boolean checkLogin = LoginDAO.checkLogin(request, member);
		boolean checkOption;
		
		System.out.println("aaa");		
		// Lấy ra đối tượng HttpSession
		HttpSession session = request.getSession();
		
		if(checkLogin) {
			// get id user
			int idMember = MemberDAO.getIdMember(request, member);
			
			// get one user
			Member memberOne = MemberDAO.getOneMember(request, idMember);

			// save sesion
			session.setAttribute("SessionMember", true);
			
			
		
//			true: admin
//			false: user
			checkOption =  LoginDAO.checkOptionMember(request, member);
			if(checkOption) {
				RequestDispatcher rd = request.getRequestDispatcher("view/admin/HomeAdmin.jsp");
				rd.forward(request, response);
				
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("view/Home.jsp");
				rd.forward(request, response);
			}
		}else {
			session.setAttribute("SessionMember", false);
			request.setAttribute("message", "Tên tài khoản hoặc mật khẩu không chính xác");
			RequestDispatcher rd = request.getRequestDispatcher("view/Login.jsp");
			rd.forward(request, response);
		}
		
	}

}
