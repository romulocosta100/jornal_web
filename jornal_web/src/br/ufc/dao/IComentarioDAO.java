package br.ufc.dao;

import java.util.List;

import br.ufc.model.Comentario;;

public interface IComentarioDAO {

	public void add(Comentario comentario);
	public void deletar(Comentario comentario);
	public void alterar(Comentario comentario);
	public Comentario buscar(Comentario comentario);
	public List<Comentario> listar();

}
