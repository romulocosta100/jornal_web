package br.ufc.dao;

import java.util.List;

import br.ufc.model.Usuario;

public interface IUsuarioDAO {

	public void add(Usuario usuario);
	public void deletar(Usuario usuario);
	public void alterar(Usuario usuario);
	public Usuario buscar(Usuario usuario);
	public Usuario buscarPorLogin(Usuario usuario);
	public List<Usuario> listar();
	
	
}
