
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//get the values from the form
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		//call the update user method
		boolean userUpdated = userDBUtil.updateuser(id, name, email, username, password, phone, type);

		if (userUpdated) {
			// Get a list of user details
			List<Users> userdetails = userDBUtil.listUserDetails();
			request.setAttribute("userdetails", userdetails);
			request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
		} else {
			// Get a list of user details
			List<Users> userDetails = userDBUtil.getUserDetails(id); 
			request.setAttribute("userDetails", userDetails);
			//if update failed display alert message
			out.println("<script type='text/javascript'>");
			out.println("alert('User Update Failed');");
			out.println("location='UpdateUser.jsp'");
			out.println("</script>");
			request.getRequestDispatcher("UserAccount.jsp").forward(request, response);

		}
	}

}
