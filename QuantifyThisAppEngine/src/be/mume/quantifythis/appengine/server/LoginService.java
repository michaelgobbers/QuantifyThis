package be.mume.quantifythis.appengine.server;

import java.io.IOException;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class LoginService extends HttpServlet{
	
	EntityManagerFactory emf = EMF.get();
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		UserService userService = UserServiceFactory.getUserService();

        if (req.getUserPrincipal() != null) {
        	
            User user = userService.getCurrentUser();
            resp.setContentType("text/html");
            resp.getWriter().println("<head>");
            resp.getWriter().println("</head>");
            resp.getWriter().println("<body>");
        	resp.getWriter().println("<p>Welcome "+ user.getNickname() +"</p>");
        	resp.getWriter().println("</body>");
        }
        else{
        	resp.setContentType("text/html");
        	resp.getWriter().println("<head>");
            resp.getWriter().println("<script>var username='';</script>");
            resp.getWriter().println("</head>");
            resp.getWriter().println("<body>");
        	resp.getWriter().println("<p>Please <a href=\"" +
                    userService.createLoginURL(req.getRequestURI()) +
                    "\">sign in</a>.</p>");
        	resp.getWriter().println("</body>");
        }
	}
}
