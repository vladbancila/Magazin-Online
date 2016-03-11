package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.domain.Articol;
import model.service.Service;

@WebServlet("/home")
public class ServletHome extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Articol> articole = Service.getToateArticole();

		request.setAttribute("articole", articole);

		// System.out.println(articole);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/afisaza.jsp");

		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
