package br.ufc.dao;

import java.util.List;

import br.ufc.model.Role;

public interface IRoleDAO {
	public void add(Role role);
	public void deletar(Role role);
	public void alterar(Role role);
	public Role buscar(Role role);
	public List<Role> listar();

}
