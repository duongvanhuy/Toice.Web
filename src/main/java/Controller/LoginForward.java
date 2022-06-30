package Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import BEAN.SilderBanner;
import DAO.DBDAO;
import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class LoginForward
 */

@WebServlet("/LoginForward")
public class LoginForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginForward() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		List<SilderBanner> sliders = DBDAO.getAllSlideBanner();
//		request.setAttribute("sliders", sliders);
//	
	//	HttpSession session = request.getSession();
		
//		System.out.println("boolean" + (Boolean) session.getAttribute("SessionMember"));
//		if((Boolean) session.getAttribute("SessionMember")) {
//			
//		}
//		
		RequestDispatcher rd = request.getRequestDispatcher("view/Login.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
