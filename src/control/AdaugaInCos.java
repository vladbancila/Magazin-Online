package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.domain.Articol;
import model.service.Service;

/**
 * Servlet implementation class AdaugaInCos
 */
@WebServlet("/adaugaInCos")
public class AdaugaInCos extends HttpServlet {
	
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesiune = request.getSession();
		
		List<Articol> cos = (List<Articol>)sesiune.getAttribute("cos");
		
		if(cos==null){
			cos = new ArrayList<Articol>();
		}
		//System.out.println("idul este : "+request.getParameter("id"));
		cos.add(Service.intoarceProdus(request.getParameter("id")));
		
		sesiune.setAttribute("cos", cos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cosulDvs.jsp");

		dispatcher.forward(request, response);
		
	}

}
