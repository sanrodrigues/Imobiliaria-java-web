package br.org.senac.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.org.senac.bd.Conexao;
import br.org.senac.bd.ImovelRepository;
import br.org.senac.domain.Imovel;

/**
 * Servlet implementation class ListarImovel
 */
@WebServlet("/ListarImovel")
public class ListarImovel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Imovel> imovel= ImovelRepository.buscarImovel();
			request.setAttribute("imovel",imovel);
			request.getRequestDispatcher("imoveis.jsp").forward(request, response);
			
		} catch (Exception e) {
			throw new ServletException("Problemas ao recuperar informações do banco de dados");
		}
	
	}}
