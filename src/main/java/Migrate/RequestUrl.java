package Migrate;

import java.io.IOException;

import BEAN.Member;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class RequestUrl
 */
public class RequestUrl implements Filter {

    /**
     * Default constructor. 
     */
    public RequestUrl() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		
		// lấy ra đường dẫn hiện tại muốn truy cập
		String servletPath = req.getServletPath();

		
		// kiểm tra seesion tồn tại hay không

		//	boolean SessionMember =  (Boolean) session.getAttribute("SessionMember");
		//System.out.println("session: " + SessionMember);	
		//if(servletPath.equals("/LoginForward")) {
//			if(SessionMember) {
//				RequestDispatcher rd = request.getRequestDispatcher("view/home.jsp");
//				chain.doFilter(request, response);
//				return;
//			}
			
		//}else {
		
			// pass the request along the filter chain
			chain.doFilter(request, response);
		//}
	
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("LogFilter init!");
	}

}
