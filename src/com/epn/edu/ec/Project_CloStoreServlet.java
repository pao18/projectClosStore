package com.epn.edu.ec;
import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Project_CloStoreServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		resp.getWriter().println("<html><body><h1><center>Hello App Engine!</center></h1></body></html>");
	}
}
