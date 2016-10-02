package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;

/**
 * Servlet implementation class doregister
 */
@WebServlet("/doregister")
public class doregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doregister() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");

		String page;
		Customer customer = new Customer(id, password, name, gender, email);

		CustomerService service = (CustomerService) CustomerService.getInstance();
		Customer findcustomer = service.findCustomer(id);

		if (id == null || password == null || name == null || gender == null || email == null) {
			page = "/view/error.jsp";
		} else if (findcustomer != null) {
			page = "/view/error.jsp";
		} else {
			service.addCustomer(customer);
			request.setAttribute("customer", customer);
			page = "/view/registersuccess.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);

	}

}
