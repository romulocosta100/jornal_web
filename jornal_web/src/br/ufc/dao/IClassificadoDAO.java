package br.ufc.dao;

import java.util.List;

import br.ufc.model.Classificado;

public interface IClassificadoDAO {
	
	public void add(Classificado classificado);
	public void deletar(Classificado classificado);
	public void alterar(Classificado classificado);
	public Classificado buscar(Classificado classificado);
	public List<Classificado> listar();

}
