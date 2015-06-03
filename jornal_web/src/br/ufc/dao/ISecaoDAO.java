package br.ufc.dao;

import java.util.List;

import br.ufc.model.Secao;

public interface ISecaoDAO {
	
	
	public void add(Secao secao);
	public void deletar(Secao secao);
	public void alterar(Secao secao);
	public Secao buscar(Secao secao);
	public List<Secao> listar();

}
