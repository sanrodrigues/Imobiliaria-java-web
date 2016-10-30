package br.org.senac.bd;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Conexao {
	
	public static Connection getConexao() throws SQLException {
		InitialContext ctx;
		try {
			ctx = new InitialContext();
			DataSource ds = 
				(DataSource)ctx
					.lookup("java:/comp/env/jdbc/postgres");
			if (ds == null) {
				throw new SQLException("Data source não configurado");
			}
			return ds.getConnection();
		} catch (NamingException e) {
			throw new SQLException("Problema ao criar um contexto");
		}		
		
	}

}
