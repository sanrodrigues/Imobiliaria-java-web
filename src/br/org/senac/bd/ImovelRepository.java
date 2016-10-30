package br.org.senac.bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import br.org.senac.bd.Conexao;
import br.org.senac.domain.Imovel;
public class ImovelRepository {

	/*
	 * public static void salvar(Imovel imovel) throws SQLException { if
	 * (contato.getId() == 0) { inserir(imovel); } else { alterar(imovel); } }
	 */
	public static void salvar(Imovel imovel) throws SQLException {
		if (imovel.getId() == 0) {
			inserir(imovel);
		} else {
			alterar(imovel);
		}

	}
    
	private static void inserir(Imovel imovel) throws SQLException {
		try (Connection con = Conexao.getConexao()) {
			String sql = "insert into imovel(codigo,descricao,titulo,valor,img)values(?,?,?,?,?)";
			try (PreparedStatement pst = con.prepareStatement(sql)) {
				setValues(imovel, pst);
				pst.setInt(5, imovel.getId());
				pst.setBytes(1, imovel.getImg());
				pst.executeUpdate();
			}
		}

	}

	private static void alterar(Imovel imovel) throws SQLException {

	}
	public static List<Imovel> consultarImovel(String descricao) throws SQLException {
	
		try {
			try(Connection con = Conexao.getConexao()) {
				String sql = "select* from imovel where imovel.descricao like '%" + descricao + "%'" +
							 " order by imovel.id";
				try (PreparedStatement pst = con.prepareStatement(sql)) {
					ResultSet rs = pst.executeQuery();
					List<Imovel> listImovel= new  ArrayList<>();
					
					while (rs.next()){
						Imovel imovel = new Imovel();
						imovel.setId(rs.getInt("id"));
						imovel.setTitulo(rs.getString("titulo"));
						imovel.setDescricao(rs.getString("descricao"));
						imovel.setValor(rs.getDouble("valor"));
						imovel.setImg(rs.getBytes("img"));
						listImovel.add(imovel);
					}
					return listImovel;	
				}
			}
		} catch (SQLException exc) {
			throw exc;
		}

	}

	private static void setValues(Imovel imovel, PreparedStatement pst) throws SQLException {
		pst.setString(1, imovel.getCodigo());
		pst.setString(2, imovel.getTitulo());
		pst.setString(3, imovel.getDescricao());
		pst.setDouble(4, imovel.getValor());
		pst.setBytes(5, imovel.getImg());

	}

	public static List<Imovel> buscarImovel() throws SQLException {
		try (Connection con = Conexao.getConexao()) {
			String sql = "select id,codigo,titulo,descricao,valor  from Imovel order by id";
			try (Statement query = con.createStatement()) {
				ResultSet ir = query.executeQuery(sql);
				List<Imovel> retorno = new ArrayList<>();
				while (ir.next()) {
					Imovel c = createImovel(ir);
					retorno.add(c);
				}
				return retorno;
			}

		}
	}

	public static Imovel createImovel(ResultSet ir) throws SQLException{
		Imovel im= new Imovel();
		/*id,codigo,titulo,descricao,valor,img*/
		im.setId(ir.getInt("id"));
		im.setCodigo(ir.getString("codigo"));
		im.setTitulo(ir.getString("titulo"));
		im.setDescricao(ir.getString("descricao"));
		im.setValor(ir.getDouble("valor"));
		return im;
	}
}
