package br.org.senac.servlet;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.org.senac.domain.Imovel;
import br.org.senac.bd.ImovelRepository;

/**
 * Servlet implementation class SalvarImovel
 */
@WebServlet("/SalvarImovel")
public class SalvarImovel extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Imovel imovel = new Imovel();
		String id = request.getParameter("id"); 
		if (id != null)
			imovel.setId(Integer.parseInt(id));
		imovel.setCodigo("codigo");
		imovel.setTitulo("titulo");
		imovel.setDescricao("descricao");
		imovel.setValor(Double.parseDouble("valor"));
		//imovel.setImg("img");
		try {
			ImovelRepository.salvar(imovel);
		} catch (Exception e) {
			throw
			   new 
			     ServletException("Erro ao acessar "
			     		+ "o banco de dados. Erro:"
			    		    + e.getMessage());
		}
		//mostrar resultado
				try(Writer w = response.getWriter()) {
					w.append("Registro adicionado");
				}
			
	}

}
