package br.org.senac.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.org.senac.bd.UsuarioRepository;
import br.org.senac.domain.Usuario;

/**
 * Servlet implementation class ListarUser
 */
@WebServlet("/ListarUser")
public class ListarUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Usuario> user= UsuarioRepository.buscarUser();
			request.setAttribute("Usuario", user);
			request
			.getRequestDispatcher("usuarios.jsp")
			.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException("Problemas ao recuperar informações do banco de dados");
		}
	}

}
