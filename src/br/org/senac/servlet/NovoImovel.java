package br.org.senac.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NovoImovel
 */
@WebServlet("/NovoImovel")
public class NovoImovel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Imovel imovel= new Imovel();
		request.setAttribute("imovel",imovel);
		request.getRequestDispatcher("formImovel.jsp")
		.forward(request, response);
	}

}
