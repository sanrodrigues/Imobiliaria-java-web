package br.org.senac.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.org.senac.domain.Usuario;

/**
 * Servlet implementation class NovoUser
 */
@WebServlet("/NovoUser")
public class NovoUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Usuario user = new Usuario();
		request.setAttribute("usuario", user);
		request.getRequestDispatcher("formUser.jsp").forward(request, response);
	}

}
