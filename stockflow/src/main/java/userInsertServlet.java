
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/userInsertServlet")
public class userInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get the values from form
		String id = request.getParameter("uid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("UserName");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");

		boolean isTrue;

		isTrue = userDBUtil.insertuser(id, name, email, username, password, phone, type);
		if (isTrue == true) {
			// Get a list of user details with added user
			List<Users> userdetails = userDBUtil.listUserDetails();
			request.setAttribute("userdetails", userdetails);
			request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
		} else {
			// Get a list of user details
			List<Users> userdetails = userDBUtil.listUserDetails();
			request.setAttribute("userdetails", userdetails);
			request.getRequestDispatcher("manageUsers.jsp").forward(request, response);

		}
	}
}
