package br.ufc.dao;

import java.util.List;

import br.ufc.model.Noticia;

public interface INoticiaDAO {
	
	public void add(Noticia noticia);
	public void deletar(Noticia noticia);
	public void alterar(Noticia noticia);
	public Noticia buscar(Noticia noticia);
	public List<Noticia> listar();
	

}
