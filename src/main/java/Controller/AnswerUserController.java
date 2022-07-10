package Controller;

import java.io.IOException;
import java.util.List;

import com.google.gson.JsonObject;

import BEAN.ReadQuestions;
import DAO.AnswerUser;
import DAO.ReadQuestionsDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AnswerUserController
 */

@WebServlet("/AnswerUserController")
public class AnswerUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AnswerUserController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String urlAudio = req.getParameter("url");
		//	String timeline = req.getParameter("timeline");
			String timeline = "0:1:12";
			
			// Lấy ra đối tượng HttpSession
			HttpSession session = req.getSession();
			
			int idUser = (Integer) session.getAttribute("SessionMember");
			
			int idExamplnation = 1;
			
			AnswerUser.saveAnswerUser(req, urlAudio, idExamplnation,  idUser, timeline);
			
			resp.getWriter().write("Success");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
