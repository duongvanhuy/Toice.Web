package Controller;

import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import BEAN.ReadQuestions;
import DAO.ReadQuestionsDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ReadQuestionsController")
public class ReadQuestionsController extends HttpServlet {
	
	Gson gson = new Gson();

	public ReadQuestionsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int curElement = Integer.parseInt(req.getParameter("curElement"));
			int page = Integer.parseInt(req.getParameter("page"));
			int readexeciseID = Integer.parseInt(req.getParameter("readexeciseID"));
			List<ReadQuestions> questions = ReadQuestionsDAO.getReadQuestions(req, curElement, page, readexeciseID);
			//int totalQuestions = ReadQuestionsDAO.sumReadQuestion(req);
			
			
			String data = gson.toJson(questions);
			int totalQuestions = Integer.parseInt(gson.toJson(ReadQuestionsDAO.sumReadQuestion(req)));
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

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	
}
