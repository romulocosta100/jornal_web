package br.ufc.dao;

import java.util.List;

import br.ufc.model.Noticia;
import br.ufc.model.Secao;

public interface INoticiaDAO {
	
	public void add(Noticia noticia);
	public void deletar(Noticia noticia);
	public void alterar(Noticia noticia);
	public Noticia buscar(Noticia noticia);
	public List<Noticia> listarSecao(Secao secao);
	public List<Noticia> listar();
	

}
