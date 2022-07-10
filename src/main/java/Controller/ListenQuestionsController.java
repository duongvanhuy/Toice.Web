package Controller;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import BEAN.ListenQuestion;
import DAO.ListenQuestionsDAO;
import DAO.ReadQuestionsDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListenQuestionsController
 */
@WebServlet("/ListenQuestionsController")
public class ListenQuestionsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Gson gson = new Gson();
    /**
     * Default constructor. 
     */
    public ListenQuestionsController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int curElement = Integer.parseInt(req.getParameter("curElement"));
			int page = Integer.parseInt(req.getParameter("page"));
			int listenEnexeciseID = Integer.parseInt(req.getParameter("listenEnexeciseID"));
			List<ListenQuestion> questions = ListenQuestionsDAO.getListenQuestions(req, curElement, page, listenEnexeciseID);
			//int totalQuestions = ReadQuestionsDAO.sumReadQuestion(req);
			
			
			String data = gson.toJson(questions);
			int totalQuestions = Integer.parseInt(gson.toJson(ListenQuestionsDAO.sumListenQuestion(req)));
			 // put some value pairs into the JSON object 
//		    json.addProperty("Name", "ManojSarnaik");
//		    
			JsonObject json = new JsonObject();
			json.addProperty("questions", data);
			json.addProperty("total", totalQuestions);
			
			resp.setContentType("application/json");
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter().write(json.toString());
			
			//response.getWriter().append("Served at: ").append(request.getContextPath());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
