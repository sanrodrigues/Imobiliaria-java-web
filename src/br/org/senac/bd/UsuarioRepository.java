package br.org.senac.bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import br.org.senac.bd.Conexao;
import br.org.senac.domain.Usuario;

public class UsuarioRepository {
	
	public static void salvarUser(Usuario usuario) throws SQLException {
		if (usuario.getId() == 0) {
			inserirUser(usuario);
		} else {
			alterarUser(usuario);
		}

	}
	

	private static void alterarUser(Usuario usuario) throws SQLException {
		try (Connection con = Conexao.getConexao()) {
			String sql = "update into usuario nome=?,email=?,senha=?";
			try (PreparedStatement pst = con.prepareStatement(sql)) {
				setValues(usuario, pst);
				pst.setInt(3,usuario.getId());
				pst.executeQuery();
			}
		}
		
	}
	private static void setValues(Usuario usuario, PreparedStatement pst) throws SQLException {
		// TODO Auto-generated method stub
		pst.setString(1, usuario.getNome());
		pst.setString(2, usuario.getEmail());
		pst.setString(3, usuario.getSenha());
		
	}
	private static void inserirUser(Usuario usuario) throws SQLException {
		try (Connection con = Conexao.getConexao()) {
			String sql = "insert into usuario (nome,email,senha) values (?,?,?)";
			try (PreparedStatement pst = con.prepareStatement(sql)) {
				setValues(usuario, pst);
				pst.setInt(3,usuario.getId());
				pst.executeQuery();
			}
		}
		
	}

	public static Usuario createUser(ResultSet ur) throws SQLException{
		Usuario us= new Usuario();
		/*id,codigo,titulo,descricao,valor,img*/
		us.setId(ur.getInt("id"));
		us.setNome(ur.getString("nome"));
		us.setEmail(ur.getString("email"));
		us.setSenha(ur.getString("senha"));
	
		return us;
	}
	
	public static List<Usuario> buscarUser() throws SQLException {
		try (Connection con = Conexao.getConexao()) {
			String sql = "select id,nome,email,senha  from usuario order by id";
			try (Statement query = con.createStatement()) {
				ResultSet ir = query.executeQuery(sql);
				List<Usuario> retorno = new ArrayList<>();
				while (ir.next()) {
					Usuario u = createUser(ir);
					retorno.add(u);
				}
				return retorno;
			}

		}
	}

}
