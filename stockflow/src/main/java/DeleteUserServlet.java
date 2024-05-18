
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		// Get the 'uid' parameter from the form
		String id = request.getParameter("uid");
		boolean isTrue;
		// Call the deleteuser method to delete a user based on 'id'
		isTrue = userDBUtil.deleteuser(id);

		if (isTrue == true) {
			// Get a list of user details
			List<Users> userdetails = userDBUtil.listUserDetails(); 
			request.setAttribute("userdetails", userdetails);
			request.getRequestDispatcher("manageUsers.jsp").forward(request, response);
		} else {
			// Get user detail
			List<Users> userdetails = userDBUtil.getUser(id);
			request.setAttribute("userDetails", userdetails);

			RequestDispatcher dispatcher = request.getRequestDispatcher("UserAccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
