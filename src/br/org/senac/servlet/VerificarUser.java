package br.org.senac.servlet;

import java.io.IOException;
import java.io.Writer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VerificarUser
 */
@WebServlet("/VerificarUser")
public class VerificarUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		try (Writer w = response.getWriter()) {
			w.append("<!DOCTYPE html><html>");
			w.append(String.format("<head><title>Login</title></heade><body>"));
			if (senha.equals("123") & email.equals("contato@sandrorodrigues.net")) {
				w.append("Bem vindo, " + email);
				HttpSession session = request.getSession();
				response.sendRedirect("admin.jsp");
				session.setAttribute("nome", email);
			} else {
			
				response.sendRedirect("404.html");
				

			}
			w.append("</body></html>");
		}
	}
}
