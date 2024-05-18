import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get the values from login form
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		//call validate method from userDBUtil
		isTrue = userDBUtil.validate(userName, password);
		
		if (isTrue == true) {			
			RequestDispatcher dis = request.getRequestDispatcher("admin_dashboard.jsp");
			dis.forward(request, response);
		} else {
			//display alert
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
	}
}
